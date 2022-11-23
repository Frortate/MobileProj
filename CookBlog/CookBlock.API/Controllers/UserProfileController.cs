using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using CookBlock.API.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CookBlock.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserProfileController : ControllerBase
    {
        ApplicationContext db;
        public UserProfileController(ApplicationContext context)
        {
            db = context;
        }
    }
}
