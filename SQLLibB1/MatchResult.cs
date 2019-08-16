namespace SQLLibB1
{
    internal struct MatchResult
    {
        /// <summary>  
        /// Which match this is  
        /// </summary>  
        private int _matchID;
        public int MatchID
        {
            get
            {
                return this._matchID;
            }
        }

        /// <summary>  
        /// Where the match starts in the input string  
        /// </summary>  
        private int _matchIndex;
        public int MatchIndex
        {
            get
            {
                return this._matchIndex;
            }
        }

        /// <summary>  
        /// What string matched the pattern  
        /// </summary>  
        private string _matchValue;
        public string MatchValue
        {
            get
            {
                return this._matchValue;
            }
        }

        /// <summary>  
        /// Which matching group this is  
        /// </summary>  
        private int _groupID;
        public int GroupID
        {
            get
            {
                return this._groupID;
            }
        }

        /// <summary>  
        /// Where this group starts in the input string  
        /// </summary>  
        private int _groupIndex;
        public int GroupIndex
        {
            get
            {
                return this._groupIndex;
            }
        }

        /// <summary>  
        /// What the group matched in the input string  
        /// </summary>  
        private string _groupValue;
        public string GroupValue
        {
            get
            {
                return this._groupValue;
            }
        }

        /// <summary>  
        /// Where this capture starts in the input string  
        /// </summary>  
        private int _captureIndex;
        public int CaptureIndex
        {
            get
            {
                return this._captureIndex;
            }
        }

        /// <summary>  
        /// What the capture matched in the input string  
        /// </summary>  
        private string _captureValue;
        public string CaptureValue
        {
            get
            {
                return this._captureValue;
            }
        }

        /// <summary>  
        ///     A convenient constructor which fills in all the fields contained in this struct.  
        /// </summary>  
        /// <param name="matchID">Which match this is</param>  
        /// <param name="matchIndex">Where the match starts in the input string</param>  
        /// <param name="matchValue">What string matched the pattern</param>  
        /// <param name="groupID">Which matching group this is</param>  
        /// <param name="groupIndex">Where this group starts in the input string</param>  
        /// <param name="groupValue">What the group matched in the input string</param>  
        /// <param name="captureIndex">Where this capture starts in the input string</param>  
        /// <param name="captureValue">What the capture matched in the input string</param>  
        public MatchResult(int matchId, int matchIndex, string matchValue,
            int groupId, int groupIndex, string groupValue,
            int captureIndex, string captureValue)
        {
            this._matchID = matchId;
            this._matchIndex = matchIndex;
            this._matchValue = matchValue;
            this._groupID = groupId;
            this._groupIndex = groupIndex;
            this._groupValue = groupValue;
            this._captureIndex = captureIndex;
            this._captureValue = captureValue;
        }
    }

}
