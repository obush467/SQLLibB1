using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RegExTest
{
    class Program
    {
        static void Main(string[] args)
        {

            Utilities.RegularExpressions.MATCFileNameFull q = new Utilities.RegularExpressions.MATCFileNameFull();
            var yyt = q.Matches("65454ГУ654321_ываыва_ываыва5456_654_апрпарпа_20185691_34.kjh");
        }
    }
}
