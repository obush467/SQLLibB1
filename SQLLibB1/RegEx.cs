using System;
using System.Collections.Generic;
using System.Text;
using System.Data.Sql;
using Microsoft.SqlServer.Server;
using System.Data.SqlTypes;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;
using System.Collections;
using System.Diagnostics;
using System.Linq;

namespace SQLLibB1
{
    public class RegEx
    {
        [SqlFunction]
        public static SqlBoolean ExistMATCNumberRegEx(SqlString Input)
        {
            Utilities.RegularExpressions.MATCNumber mn = new Utilities.RegularExpressions.MATCNumber();
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            return mn.IsMatch(input);
        }

        [SqlFunction]
        public static SqlBoolean CompareByWordsRegEx(SqlString Input1, SqlString Input2,SqlString SplitterPattern)
        {
            string input1 = (Input1.IsNull) ? string.Empty : Input1.Value;
            string input2 = (Input2.IsNull) ? string.Empty : Input2.Value;
            string pattern = (SplitterPattern.IsNull) ? string.Empty : SplitterPattern.Value;
            Regex rx = new Regex(pattern, RegexOptions.IgnoreCase | RegexOptions.Compiled);
            List<string> list1=new List<string>(rx.Split(input1));
            List<string> list2 = new List<string>(rx.Split(input2));
            IEnumerable<string> list3 =list1.Except(list2);
            if (list3 != null & list3.Count() > 0)
                return false;
            else
                return true;             
        }

        [SqlFunction]
        public static string ReplaceRegEx(SqlString Input, SqlString Pattern, SqlString ReplaceStr)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            string pattern = (Pattern.IsNull) ? string.Empty : Pattern.Value;
            string replaceStr = (ReplaceStr.IsNull) ? string.Empty : ReplaceStr.Value;
            Regex rx = new Regex(pattern,RegexOptions.IgnoreCase | RegexOptions.Compiled);
            string res = rx.Replace(input, replaceStr);
            return res;
        }

        [SqlFunction(FillRowMethodName = "MatchesFillRow")]
        public static IEnumerable MatchesRegEx(SqlString Input, SqlString Pattern)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            string pattern = (Pattern.IsNull) ? string.Empty : Pattern.Value;
            Regex rx = new Regex(pattern);
            return GetMatches(input,pattern);
        }
        public static void MatchesFillRow(Object obj, out int matchId, out int matchIndex, out string matchValue,
            out int groupId, out int groupIndex, out string groupValue, out int captureIndex, out string captureValue)
        {
            MatchResult result = (MatchResult)obj;
            matchId = result.MatchID;
            matchIndex = result.MatchIndex;
            matchValue = result.MatchValue;
            groupId = result.GroupID;
            groupIndex = result.GroupIndex;
            groupValue = result.GroupValue;
            captureIndex = result.CaptureIndex;
            captureValue = result.CaptureValue;
        }


        [SqlFunction(FillRowMethodName = "MatchFillRow")]
        public static IEnumerable MatchRegEx(SqlString Input, SqlString Pattern)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            string pattern = (Pattern.IsNull) ? string.Empty : Pattern.Value;
            Regex rx = new Regex(pattern);
            Match resMatch = rx.Match(input);
            return resMatch.Groups;
        }
        public static void MatchFillRow(Object obj, out string Group, out Nullable<int> Index)
        {
                if (((Group)obj).Value == "")
                { Group = null; Index = null; }
                else
                { Group = ((Group)obj).Value; 
                Index=((Group)obj).Index;}
        }

        [SqlFunction(FillRowMethodName = "SplitRegExFillRow")]
        public static IEnumerable SplitRegEx(SqlString Input, SqlString Pattern)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            string pattern = (Pattern.IsNull) ? string.Empty : Pattern.Value;
            Regex rx = new Regex(pattern, RegexOptions.IgnoreCase | RegexOptions.Compiled);
            return  rx.Split(input);
        }
        protected static void SplitRegExFillRow(Object obj, out string Word/*, out Nullable<int> Index*/)
        {
            if ((string)obj == "")
            { Word = null; }
            else
            { Word = (string)obj; }
        }

        private static IEnumerable<MatchResult> GetMatches(string input, string pattern)
        {
            List<MatchResult> result = new List<MatchResult>();
            int matchID = 0;
            int groupID = 0;
            foreach (Match wm in Regex.Matches(input, pattern))
                if (wm.Groups.Count < 1)
                {
                    result.Add(new MatchResult(matchID, wm.Index, wm.Value, -1, -1, String.Empty, -1, String.Empty));
                }
                else
                { groupID = 0;
                    foreach (Group g in wm.Groups)
                    { if (g.Captures.Count < 1)
                        {
                            result.Add(new MatchResult(matchID, wm.Index, wm.Value, groupID, g.Index, g.Value, -1, String.Empty));
                        }
                        else
                        {
                            foreach (Capture c in wm.Groups)
                            {
                                result.Add(new MatchResult(matchID, wm.Index, wm.Value, groupID, g.Index, g.Value, c.Index, c.Value));
                            }
                        }
                        groupID += 1;
                    }
                matchID += 1;
            }
            return result;
        }

    }
    
    
}
