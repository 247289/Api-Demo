using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using WebApi.Dao;
using WebApi.Models;

namespace WebApi.Controller.api
{
    public class LopController : ApiController
    {
        LopModels dao = new LopModels();
        public IHttpActionResult GetLop()
        {
            IList<Lop> list = dao.GetLop();
            if (list.Count == 0)
                return NotFound();
            return Ok(list);
        }
    }
}