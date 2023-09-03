using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Assignment12.Data
{
    public class BlogDb1Context : DbContext
    {
        // You can add custom code to this file. Changes will not be overwritten.
        // 
        // If you want Entity Framework to drop and regenerate your database
        // automatically whenever you change your model schema, please use data migrations.
        // For more information refer to the documentation:
        // http://msdn.microsoft.com/en-us/data/jj591621.aspx
    
        public BlogDb1Context() : base("name=BlogDb1Context")
        {
        }

        public System.Data.Entity.DbSet<Assignment12.Models.Post> Posts { get; set; }

        public System.Data.Entity.DbSet<Assignment12.Models.Comment> Comments { get; set; }
        public object Comment { get; internal set; }
    }
}
