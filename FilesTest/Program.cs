using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using Utilities.RegularExpressions;

namespace FilesTest
{
    class Program
    {
        static void Main(string[] args)
        {
            correctDateToFiles();
            //            insertHashToFiles(); 
        }
        public static void correctDateToFiles()
        {
            using (SqlConnection connection = new SqlConnection("Server=MAKSIMOV; User Id=Бушмакин; Password=453459; Database=GBUMATC;"))
            {
                string sql = "SELECT f1.name,fh.Hash hash,FORMAT(f1.last_write_time,'yyyyMMdd') fdate,cast( f1.path_locator as varchar(1000)) path_locator FROM Files f INNER JOIN Installation i ON f.name=i.UNOM INNER JOIN Files f1 ON f1.parent_path_locator=f.path_locator INNER JOIN FilesHash fh ON f1.path_locator=fh.path_locator AND f1.name LIKE i.UNOM+'%' AND fh.FName IS NULL AND f1.name LIKE '%_паспорт_актуализированный_согл_%'";
                connection.Open();
                MATCFileNameFull q = new MATCFileNameFull();
                SqlDataAdapter daFiles = new SqlDataAdapter(sql, connection);
                DataTable tblFiles = new DataTable();
                daFiles.Fill(tblFiles);
                SqlCommand update = new SqlCommand("UPDATE Files SET name= @newname WHERE path_locator	= @path_locator", connection);
                update.Parameters.Add("@newname", SqlDbType.NVarChar, 500);
                update.Parameters.Add("@path_locator", SqlDbType.VarChar, 1000);
                update.Prepare();

                SqlCommand updateHash = new SqlCommand("UPDATE FilesHash SET fname= @newfname WHERE path_locator= @path_locator", connection);
                updateHash.Parameters.Add("@newfname", SqlDbType.NVarChar, 500);
                updateHash.Parameters.Add("@path_locator", SqlDbType.VarChar, 1000);
                updateHash.Prepare();

                try
                {
                    foreach (DataRow dr in tblFiles.Rows)
                    {
                        string _result = null;
                        foreach (Match wm in q.Matches(dr["name"].ToString()))
                            if (wm.Groups.Count == 6 & wm.Groups[3].ToString() != dr["fdate"].ToString())
                            {
                                string _name = null;
                                foreach (Capture cm in wm.Groups[2].Captures)
                                {
                                    _name = _name + cm.Value;
                                }
                                _result = wm.Groups[1].ToString() + _name + "_" + dr["fdate"].ToString() + "_" + dr["Hash"].ToString() + "." + wm.Groups[5].ToString();
                                update.Parameters["@newname"].Value = _result;
                                update.Parameters["@path_locator"].Value = dr["path_locator"];
                                update.ExecuteNonQuery();
                                updateHash.Parameters["@newfname"].Value = _name;
                                updateHash.Parameters["@path_locator"].Value = dr["path_locator"];
                                updateHash.ExecuteNonQuery();
                            }

                    };
                }
                finally
                {
                    connection.Close();
                }
            }
        }
        public static void insertHashTomainFileContainer()
        {
            using (SqlConnection connection = new SqlConnection("Server=MAKSIMOV; User Id=Бушмакин; Password=453459; Database=GBUMATC;"))
            {
                string sql = "SELECT fc.name,Hash,cast( fc.path_locator as varchar(1000)) path_locator FROM mainFileContainer fc INNER JOIN mainFileContainerHash fch ON fc.path_locator = fch.path_locator WHERE NOT fc.name LIKE '%' + fch.Hash + '%' and (name LIKE '%паспорт%' OR name LIKE '%макет%')";
                connection.Open();
                MATCFileNameFull q = new MATCFileNameFull();
                SqlDataAdapter daFiles = new SqlDataAdapter(sql, connection);
                DataTable tblFiles = new DataTable();
                daFiles.Fill(tblFiles);
                SqlCommand update = new SqlCommand("UPDATE mainFileContainer SET name= @newname WHERE path_locator	= @path_locator", connection);
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
                                    _name = _name + cm.Value;
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
        public static void insertHashToFiles()
        {
            using (SqlConnection connection = new SqlConnection("Server=MAKSIMOV; User Id=Бушмакин; Password=453459; Database=GBUMATC;"))
            {
                string sql = "SELECT fc.name,Hash,cast( fc.path_locator as varchar(1000)) path_locator FROM Files fc INNER JOIN FilesHash fch ON fc.path_locator = fch.path_locator WHERE NOT fc.name LIKE '%' + fch.Hash + '%' and (name LIKE '%макет%' OR name LIKE '%макет%')";
                connection.Open();
                MATCFileNameFull q = new MATCFileNameFull();
                SqlDataAdapter daFiles = new SqlDataAdapter(sql, connection);
                DataTable tblFiles = new DataTable();
                daFiles.Fill(tblFiles);
                SqlCommand update = new SqlCommand("UPDATE Files SET name= @newname WHERE path_locator	= @path_locator", connection);
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
                                    _name = _name + cm.Value;
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
            }}  
                      
            }
        }
    

