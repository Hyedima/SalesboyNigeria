//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SalesboyLogistics.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Shipper
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Shipper()
        {
            this.ShippingPayments = new HashSet<ShippingPayment>();
        }
    
        public string Id { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string phone { get; set; }
        public string usertype { get; set; }
        public string address { get; set; }
        public Nullable<bool> active { get; set; }
        public string Email { get; set; }
        public Nullable<bool> EmailConfirmed { get; set; }
        public string PasswordSalt { get; set; }
        public string PasswordHash { get; set; }
        public string SecurityStamp { get; set; }
        public string PhoneNumber { get; set; }
        public Nullable<bool> PhoneNumberConfirmed { get; set; }
        public Nullable<bool> TwoFactorEnabled { get; set; }
        public Nullable<System.DateTime> LockoutEndDateUtc { get; set; }
        public Nullable<bool> LockoutEnabled { get; set; }
        public Nullable<int> AccessFailedCount { get; set; }
        public string UserName { get; set; }
        public string country { get; set; }
        public string state { get; set; }
        public string city { get; set; }
        public string lat { get; set; }
        public string longi { get; set; }
        public Nullable<System.DateTime> regdate { get; set; }
        public string brandname { get; set; }
        public string category { get; set; }
        public string about { get; set; }
        public string logo { get; set; }
        public string tags { get; set; }
        public Nullable<System.DateTime> insertdate { get; set; }
        public string status { get; set; }
        public string notes { get; set; }
        public Nullable<decimal> amountpaid { get; set; }
        public Nullable<System.DateTime> paymentdate { get; set; }
        public Nullable<System.DateTime> duedate { get; set; }
        public string paymentstatus { get; set; }
        public string shippertype { get; set; }
        public string bg { get; set; }
        public string photo { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ShippingPayment> ShippingPayments { get; set; }
    }
}
