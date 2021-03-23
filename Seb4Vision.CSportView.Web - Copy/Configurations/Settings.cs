using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;

namespace Seb4Vision.CSportView.Web.Configurations
{
    public static class Settings
    {
        public static string HeatMapPath { get; set; }
        private static readonly IConfigurationRoot Configuration;
        static Settings()
        {
            var builder = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);

            Configuration = builder.Build();
            SetHeatMapPath();
        }

        public static void SetHeatMapPath()
        {
            HeatMapPath = Configuration["AppSettings:HeatMapPath"];

                if (!string.IsNullOrEmpty(HeatMapPath))
                {
                    if (!HeatMapPath.EndsWith(@"\"))
                    {
                        HeatMapPath = HeatMapPath.Trim() + @"\";
                    }
                }
        
        }


    }
}
