using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SQLLibB1
{
    [SqlUserDefinedType(Format.Native)]
    public class Probe
    { public string DISPPARAMS { get; set; } }
}
