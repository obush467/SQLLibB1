namespace SQLLibB1
{
    public class MATCFileNameFullExtensoinResult
    {
        public MATCFileNameFullExtensoinResult(string UNOM, string Name, string Date, string Counter, string Extension, string inputName = null, string path_locator = null)
        {
            _UNOM = UNOM;
            _Name = Name;
            _Date = Date;
            _Counter = Counter;
            _Extension = Extension;
            _inputName = inputName;
            _path_locator = path_locator;
        }
        private string _UNOM;
        public string UNOM
        {
            get
            {
                return this._UNOM;
            }
        }
        private string _Name;
        public string Name
        {
            get
            {
                return this._Name;
            }
        }

        private string _Date;
        public string Date
        {
            get
            {
                return this._Date;
            }
        }

        private string _Counter;
        public string Counter
        {
            get
            {
                return this._Counter;
            }
        }

        private string _Extension;
        private readonly string _inputName;
        private readonly string _path_locator;

        public string Extension
        {
            get
            {
                return this._Extension;
            }
        }
    }

}
