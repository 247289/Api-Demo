namespace WebApi.Dao
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Diem")]
    public partial class Diem
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int masv { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int mamon { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int manamhoc { get; set; }

        [Column("diem")]
        public double? diem1 { get; set; }

        public virtual MonHoc MonHoc { get; set; }

        public virtual NamHoc NamHoc { get; set; }

        public virtual SinhVien SinhVien { get; set; }
    }
}
