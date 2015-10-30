using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectLibrary
{
    public class CreditCard
    {
        private float cardNumber;
        private string cardType;
        private int expMonth;
        private int expYear;
        private int cSV;
        private int cardlimit;

        public CreditCard()
        {
            
        }

       public float CardNumber {get;set;}
       public string CardType { get; set; }
       public int ExpMonth { get; set; }
       public int ExpYear { get; set; }
       public int CSV { get; set;}
       public int Cardlimit { get; set; }

    }//end of class
}
