using Microsoft.EntityFrameworkCore;
using Seb4Vision.CSportView.Golf.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace Seb4Vision.CSportView.Golf.Data
{
    public class Seb4VisionCSportViewGolfContext : DbContext
    {
        public Seb4VisionCSportViewGolfContext(DbContextOptions<Seb4VisionCSportViewGolfContext> options)
    : base(options)
        {
        }

        public DbSet<Course> Course { get; set; }
        public DbSet<CourseHoles> CourseHoles { get; set; }
        public DbSet<Players> Players { get; set; }

        public DbSet<Progresstatus> Progresstatus { get; set; }
        public DbSet<Rounds> Rounds { get; set; }
        public DbSet<Score> Score { get; set; }
        public DbSet<Shots> Shots { get; set; }
        public DbSet<Tournament> Tournament { get; set; }
    }
}
