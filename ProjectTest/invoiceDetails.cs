using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectTest
{
    public class invoiceDetails
    {
        public string planName { get; set; }
        public DateTime startDate { get; set; }
        public DateTime endDate { get; set; }
        public double pricePaid { get; set; }
        public string paymentMethod { get; set; }
        public string email { get; set; }

    }
    public class invoiceKey { 
        public string invK { get; set; }
        public invoiceDetails invoiceDetails { get; set; } 
    }
}