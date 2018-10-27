
using API_Demo.DTO;
using System;
using System.Collections.Generic;
using System.Web.Http;
using WebApi.DAO;

namespace API_Demo.Controllers
{
    public class SinhVienController : ApiController
    {
        SinhVienDao dao = new SinhVienDao();
        public IHttpActionResult GetSV()
        {
            IList<SinhVien> list = dao.GetData();
            if (list.Count == 0)
                return NotFound();
            return Ok(list);
        }

        public IHttpActionResult PostSV([FromBody] SinhVien sv)
        {
            if (!ModelState.IsValid)
                return BadRequest("Not a valid model");

            dao.PostData(sv);
            return Ok();
        }

        public IHttpActionResult PutSV([FromBody] SinhVien sv)
        {
            if (!ModelState.IsValid)
                return BadRequest("Not a valid model");

            dao.PutData(sv);
            return Ok();
        }

        public IHttpActionResult DeleteSV(int maSV)
        {
            if (!ModelState.IsValid)
                return BadRequest("Not a valid model");

            dao.DeleteData(maSV);
            return Ok();
        }

        public IHttpActionResult Get(int masv)
        {
            IList<SinhVien> list = dao.FindData(masv);
            if (list.Count == 0)
                return NotFound();
            return Ok(list);
        }
    }
}