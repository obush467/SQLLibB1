using Microsoft.SqlServer.Server;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Text.RegularExpressions;
using Utilities.RegularExpressions;

namespace SQLLibB1
{
    public static class RegEx
    {
        [SqlFunction]
        public static SqlBoolean ExistMATCNumberRegEx(SqlString Input)
        {
            Utilities.RegularExpressions.MATCNumber mn = new Utilities.RegularExpressions.MATCNumber();
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            return mn.IsMatch(input);
        }

        [SqlFunction]
        public static SqlBoolean CompareByWordsRegEx(SqlString Input1, SqlString Input2, SqlString SplitterPattern)
        {
            string input1 = (Input1.IsNull) ? string.Empty : Input1.Value;
            string input2 = (Input2.IsNull) ? string.Empty : Input2.Value;
            string pattern = (SplitterPattern.IsNull) ? string.Empty : SplitterPattern.Value;
            Regex rx = new Regex(pattern, RegexOptions.IgnoreCase | RegexOptions.Compiled);
            List<string> list1 = new List<string>(rx.Split(input1));
            List<string> list2 = new List<string>(rx.Split(input2));
            IEnumerable<string> list3 = list1.Except(list2);
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
            Regex rx = new Regex(pattern, RegexOptions.IgnoreCase | RegexOptions.Compiled);
            string res = rx.Replace(input, replaceStr);
            return res;
        }

        [SqlFunction(FillRowMethodName = "MatchesFillRow")]
        public static IEnumerable MatchesRegEx(SqlString Input, SqlString Pattern)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            string pattern = (Pattern.IsNull) ? string.Empty : Pattern.Value;
            Regex rx = new Regex(pattern);
            return GetMatches(input, pattern);
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
            {
                Group = ((Group)obj).Value;
                Index = ((Group)obj).Index;
            }
        }

        [SqlFunction(FillRowMethodName = "SplitRegExFillRow")]
        public static IEnumerable SplitRegEx(SqlString Input, SqlString Pattern)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            string pattern = (Pattern.IsNull) ? string.Empty : Pattern.Value;
            Regex rx = new Regex(pattern, RegexOptions.IgnoreCase | RegexOptions.Compiled);
            return rx.Split(input);
        }
        public static void SplitRegExFillRow(Object obj, out string Word/*, out Nullable<int> Index*/)
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
                {
                    groupID = 0;
                    foreach (Group g in wm.Groups)
                    {
                        if (g.Captures.Count < 1)
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





        [SqlFunction(FillRowMethodName = "MATCFileNameFullExtensionFillRow")]
        public static IEnumerable MATCFileNameFullExtension(SqlString Input)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            return GetMATCFileNameFullExtensoinResult(input);
        }
        public static void MATCFileNameFullExtensionFillRow(Object obj, out string UNOM, out string Name, out string Date, out string Counter, out string Extension)
        {
            if (obj is MATCFileNameFullExtensoinResult)
            {
                UNOM = ((MATCFileNameFullExtensoinResult)obj).UNOM;
                Name = ((MATCFileNameFullExtensoinResult)obj).Name;
                Date = ((MATCFileNameFullExtensoinResult)obj).Date;
                Counter = ((MATCFileNameFullExtensoinResult)obj).Counter;
                Extension = ((MATCFileNameFullExtensoinResult)obj).Extension;
            }
            else
            {
                UNOM = null;
                Name = null;
                Date = null;
                Counter = null;
                Extension = null;
            }
        }

        public static IEnumerable<MATCFileNameFullExtensoinResult> GetMATCFileNameFullExtensoinResult(string input)
        {
            MATCFileNameFull q = new MATCFileNameFull();
            List<MATCFileNameFullExtensoinResult> result = new List<MATCFileNameFullExtensoinResult>();
            foreach (Match wm in q.Matches(input))
                if (wm.Groups.Count == 6)
                {
                    string _name = null;
                    foreach (Capture cm in wm.Groups[2].Captures)
                    {
                        _name += cm.Value;
                    }
                    result.Add(new MATCFileNameFullExtensoinResult(wm.Groups[1].ToString(), _name, wm.Groups[3].ToString(), wm.Groups[4].ToString(), wm.Groups[5].ToString()));
                }

            return result;
        }

        [SqlFunction]
        public static string MATCFileNameFullExtensionMatch2(SqlString Input)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            MATCFileNameFull q = new MATCFileNameFull();
            string _result = null;
            foreach (Match wm in q.Matches(input))
                if (wm.Groups.Count == 6)
                {
                    _result = wm.Groups[1].ToString();
                }
            return _result;
        }

        [SqlFunction]
        public static string MATCFileNameFullExtensionMatch3(SqlString Input)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            MATCFileNameFull q = new MATCFileNameFull();
            string _name = null;
            foreach (Match wm in q.Matches(input))
                if (wm.Groups.Count == 6)
                {

                    foreach (Capture cm in wm.Groups[2].Captures)
                    {
                        _name += cm.Value;
                    }

                }
            return _name;
        }

        [SqlFunction]
        public static string MATCFileNameFullExtensionMatch4(SqlString Input)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            MATCFileNameFull q = new MATCFileNameFull();
            string _result = null;
            foreach (Match wm in q.Matches(input))
                if (wm.Groups.Count == 6)
                {
                    _result = wm.Groups[3].ToString();
                }
            return _result;
        }

        [SqlFunction]
        public static string MATCFileNameFullExtensionMatch5(SqlString Input)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            MATCFileNameFull q = new MATCFileNameFull();
            string _result = null;
            foreach (Match wm in q.Matches(input))
                if (wm.Groups.Count == 6)
                {
                    _result = wm.Groups[4].ToString();
                }
            return _result;
        }

        [SqlFunction]
        public static string MATCFileNameFullExtensionMatch6(SqlString Input)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            MATCFileNameFull q = new MATCFileNameFull();
            string _result = null;
            foreach (Match wm in q.Matches(input))
                if (wm.Groups.Count == 6)
                {
                    _result = wm.Groups[5].ToString();
                }
            return _result;
        }

        [SqlFunction(DataAccess = DataAccessKind.None, IsDeterministic = true, Name = "MATCFileNameFullExtensionExists")]
        public static SqlBoolean MATCFileNameFullExtensionExists(SqlString Input)
        {
            string input = (Input.IsNull) ? string.Empty : Input.Value;
            MATCFileNameFull q = new MATCFileNameFull();
            Regex r = new Regex("^(?<number>\\d{5}[Г|Д]У\\d{6})(?<name>[а-яА-Яa-zA-Z0-9_]*)*(?<date>_\\d{8}|\\d{14})(?<filecounter>_[a-zA-Z0-9]+)*\\.(?<extension>[a-zA-Z0-9]{0,4})$");

            //return q.IsMatch(input);
            return r.IsMatch(input);
        }

        [SqlProcedure(Name = "SetFiles_HashToName")]
        public static void SetFiles_HashToName(SqlInt16 Count)
        {
            using (SqlConnection connection = new SqlConnection("context connection=true"))
            {
                string sql = "SELECT fc.name,Hash,cast( fc.path_locator as varchar(1000)) path_locator FROM Files fc INNER JOIN FilesHash fch ON fc.path_locator = fch.path_locator WHERE NOT fc.name LIKE '%' + fch.Hash + '%' and (name LIKE '%паспорт%' OR name LIKE '%макет%')";
                connection.Open();
                MATCFileNameFull q = new MATCFileNameFull();
                SqlDataAdapter daFiles = new SqlDataAdapter(sql, connection);
                DataTable tblFiles = new DataTable();
                daFiles.Fill(tblFiles);
                string str = "asdasdasdasdasdasdasdasd";
                SqlContext.Pipe.Send(str.PadRight(1000));
                SqlCommand update = new SqlCommand("UPDATE Files SET name= @newname WHERE stream_id	= @path_locator", connection);
                update.Parameters.Add("@newname", SqlDbType.NVarChar, 500);
                update.Parameters.Add("@path_locator", SqlDbType.VarChar, 1000);
                update.Prepare();
                try
                {
                    foreach (DataRow dr in tblFiles.Rows)
                    {
                        string _result = null;
                        foreach (Match wm in q.Matches(dr["name"].ToString()))
                            if (wm.Groups.Count == 6)
                            {
                                string _name = null;
                                foreach (Capture cm in wm.Groups[2].Captures)
                                {
                                    _name += cm.Value;
                                }
                                _result = wm.Groups[1].ToString() + _name + "_" + wm.Groups[3].ToString() + wm.Groups[4].ToString() + "_" + dr["Hash"].ToString() + "." + wm.Groups[5].ToString();
                                update.Parameters["@newname"].Value = _result;
                                update.Parameters["@path_locator"].Value = dr["path_locator"];
                                update.ExecuteNonQuery();
                            }

                    };
                }
                finally
                {
                    connection.Close();
                }

            }
        }
    }
}
