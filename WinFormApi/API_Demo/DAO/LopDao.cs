using API_Demo.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebApi.DAO
{
    public class LopDao
    {
        DataProvider db = new DataProvider();
        public IList<Lop> GetLop()
        {
            IList<Lop> lstLop = new List<Lop>();

            var temp = db.Lops.ToList<Lop>();

            foreach (var x in temp)
            {
                Lop sv = new Lop();
                Lop lop = new Lop();
                lop.malop = x.malop;
                lop.tenlop = x.tenlop;
                lstLop.Add(lop);
            }
            return lstLop;
        }
    }
}