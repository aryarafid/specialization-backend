using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
// using MySql.Data.MySqlClient;
using Microsoft.EntityFrameworkCore;
using PaymentDetailAPI.Models;

namespace PaymentDetailAPI.Data
{
    public class PaymentDetailContext : DbContext
    {
        public virtual DbSet<PaymentDetailModel> PaymentDetail {get;set;}

        public PaymentDetailContext(DbContextOptions<PaymentDetailContext> options):base(options){
            
        }
    }
}