using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class KseouserBLL
    {

        public static List<Model.Kseouser> GetKseouser()  //查询用户
        {
            return DAL.KseouserDAL.GetKseouser();
        }
    }
}
