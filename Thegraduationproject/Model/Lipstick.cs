using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 商品信息表
    /// </summary>
    public class Lipstick
    {

        public int LipID { get; set; }// 商品编号
        public string Lphoto { get; set; }//商品图片
        public string LTitle { get; set; }//商品名字
        public decimal LPrice { get; set; }//商品价格
        public string LColor { get; set; }//颜色
    }
}
