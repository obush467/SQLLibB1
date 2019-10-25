using System;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Utility;

namespace UtilityTest
{
    [TestClass]
    public class AddressOperatorTest
    {
        [TestMethod]
        public void AddressConvertedBlockTest()
        {
           var t= new AddressConvertedBlock("проспект нижн. 1-й пидорасовский" );
        }
    }
}
