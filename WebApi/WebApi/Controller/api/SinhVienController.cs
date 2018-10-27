﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using WebApi.Dao;
using WebApi.Models;

namespace WebApi.Controller.api
{
    public class SinhVienController : ApiController
    {
        SinhVienModels dao = new SinhVienModels();
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
            {
                return NotFound();
            }
            return Ok(list);
        }
    }
}