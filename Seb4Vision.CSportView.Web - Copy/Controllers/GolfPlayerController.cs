using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Seb4Vision.CSportView.Web.Controllers
{
    public class GolfPlayerController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
