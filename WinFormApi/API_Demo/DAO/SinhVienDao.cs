using API_Demo.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebApi.DAO
{
    public class SinhVienDao
    {
        DataProvider db = new DataProvider();
        public IList<SinhVien> GetData()
        {
            IList<SinhVien> lstSV = new List<SinhVien>();

            var temp = db.SinhViens.ToList<SinhVien>();

            foreach (var x in temp)
            {
                SinhVien sv = new SinhVien();
                sv.masv = x.masv;
                sv.tensv = x.tensv;
                sv.quequan = x.quequan;
                sv.malop = x.malop;
                lstSV.Add(sv);
            }
            return lstSV;
        }

        public int Add(SinhVien sinhVien)
        {
            db.SinhViens.Add(sinhVien);
            db.SaveChanges();
            return sinhVien.masv;
        }
        public IList<SinhVien> FindData(int masv)
        {
            IList<SinhVien> lstSV = new List<SinhVien>();

            var temp = db.SinhViens.Where(p => p.masv == masv).ToList<SinhVien>();

            foreach (var x in temp)
            {
                SinhVien sv = new SinhVien();
                sv.masv = x.masv;
                sv.tensv = x.tensv;
                sv.quequan = x.quequan;
                sv.malop = x.malop;
                lstSV.Add(sv);
            }
            return lstSV;
        }

        public void PostData(SinhVien sv)
        {
            db.SinhViens.Add(sv);
            db.SaveChanges();
        }

        public void PutData(SinhVien sv)
        {
            var sinhvien = db.SinhViens.Find(sv.masv);

            if (sinhvien != null)
            {
                sinhvien.tensv = sv.tensv;
                sinhvien.malop = sv.malop;
                sinhvien.quequan = sv.quequan;
                db.SaveChanges();
            }
        }

        public void DeleteData(int maSV)
        {
            SinhVien sinhvien = db.SinhViens.Find(maSV);

            if (sinhvien != null)
            {
                db.SinhViens.Remove(sinhvien);
                db.SaveChanges();
            }
        }
    }
}