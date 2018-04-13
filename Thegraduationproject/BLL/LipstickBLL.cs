using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL
{
    public class LipstickBLL
    {

        public static List<Lipstick> GetLipstick()  //查询商品
        {
            return DAL.LipstickDAL.GetLipstick();
        }

        public int InsertLipstick(Model.Lipstick lipstick)  //添加商品
        {
            return new DAL.LipstickDAL().InsertLipstick(lipstick);
        }

        public int DeleteLipstick(int id)  //删除商品
        {
            return new DAL.LipstickDAL().DeleteLipstick(id);
        }
    }
}
