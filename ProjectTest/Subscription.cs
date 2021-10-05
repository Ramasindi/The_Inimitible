using System;

namespace ProjectTest
{
    internal class Subscription
    {
        public string status { get; set; }
        public string plan { get; set; }
        public DateTime startDate { get; set; }
        public DateTime endDate { get; set; }
        public string paymentMethod { get; set; }
    }
}