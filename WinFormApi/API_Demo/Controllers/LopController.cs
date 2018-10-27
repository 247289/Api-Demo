using API_Demo.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using WebApi.DAO;

namespace API_Demo.Controllers
{
    public class LopController : ApiController
    {
        LopDao dao = new LopDao();
        public IHttpActionResult GetLop()
        {
            IList<Lop> list = dao.GetLop();
            if (list.Count == 0)
            {
                return NotFound();
            }
            return Ok(list);
        }
    }
}