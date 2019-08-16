namespace RegExTest
{
    public class Program
    {
        public static void Main()
        {
            //SQLLibB1.RegEx rgex = new SQLLibB1.RegEx();
            var yyt = SQLLibB1.RegEx.MATCFileNameFullExtension("65454ГУ654321_ываыва_ываыва5456_654_апрпарпа_20185691_3sfsdf4.kjh");
            var sgyyt = SQLLibB1.Address.AddressFormatter.To_fias(" город Москва, городской округ Щербинка, город Щербинка, Юбилейная улица, дом 18 ");
        }


    }
}
