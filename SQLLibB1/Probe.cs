using Microsoft.SqlServer.Server;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Fias.Operators;
using System.IO;

namespace SQLLibB1
{
    [SqlUserDefinedType(Format.Native)]
    public class FiasLoader
    {
        [SqlProcedure(Name = "Load")]
        public static void Load(SqlDateTime downloaded)
        {
            using (SqlConnection connection = new SqlConnection("context connection=true"))
            {
                var fias = new FiasOperatorDBF(new DirectoryInfo(Path.GetTempPath()), connection, "fias_tmp");
                fias.DownloadFromSite(false, downloaded.Value);
            }
        }
    }
}
