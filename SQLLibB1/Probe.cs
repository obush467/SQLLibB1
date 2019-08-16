using Microsoft.SqlServer.Server;

namespace SQLLibB1
{
    [SqlUserDefinedType(Format.Native)]
    public class Probe
    { public string DISPPARAMS { get; set; } }
}
