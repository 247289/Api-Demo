using API_Demo.DTO;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Windows.Forms;

namespace WinFormApi
{
    public partial class Form1 : Form
    {
        string baseAddress = "http://localhost:55453/api/";
        public Form1()
        {
            InitializeComponent();
        }

        public void LoadDataSV()
        {
            List<SinhVien> lstSV = null;

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(baseAddress);

                var respTask = client.GetAsync("sinhvien");
                respTask.Wait();
                var result = respTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<List<SinhVien>>();
                    readTask.Wait();
                    lstSV = readTask.Result;
                }

                dataGridView1.DataSource = lstSV;
            }
        }

        public void LoadDataClass()
        {
            List<Lop> lstClass = null;

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(baseAddress);

                var respTask = client.GetAsync("lop");
                respTask.Wait();
                var result = respTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<List<Lop>>();
                    readTask.Wait();
                    lstClass = readTask.Result;
                }

                dataGridView1.DataSource = lstClass;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            LoadDataSV();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            LoadDataClass();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            
        }
    }
}
