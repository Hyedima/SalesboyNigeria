//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SalesboyNigeria.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            this.ShippingPayments = new HashSet<ShippingPayment>();
        }
    
        public string id { get; set; }
        public string batchid { get; set; }
        public string useremail { get; set; }
        public string paymentid { get; set; }
        public Nullable<System.DateTime> orderdate { get; set; }
        public string IsShipping { get; set; }
        public string shipperid { get; set; }
        public string frieght { get; set; }
        public string insertdate { get; set; }
        public string customerid { get; set; }
        public string status { get; set; }
        public string notes { get; set; }
        public string customeremail { get; set; }
        public string paymentstatus { get; set; }
        public Nullable<System.DateTime> shipmentdate { get; set; }
        public string shipmentaddress { get; set; }
        public string Country { get; set; }
        public string city { get; set; }
        public string zip { get; set; }
        public string phone { get; set; }
        public string landmark { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string address { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ShippingPayment> ShippingPayments { get; set; }
        public virtual UserAccount UserAccount { get; set; }
    }
}
