using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace DAL
{
    public class KseouserDAL
    {
        public static List<Model.Kseouser> GetKseouser()  //查询用户
        {
            string sql = "select LoginName,[Password] from Kseouser where LoginName = 'htt' and [Password] = '123456'";
           
            SqlDataReader dr = DBHpelp.ExecuteReader(sql);
            List<Kseouser> kseouser = new List<Kseouser>();
            Kseouser model = null;
            while (dr.Read())
            {
                model = new Kseouser();
                model.LoginName = dr["LoginName"].ToString();
                model.Password = dr["Password"].ToString();
                kseouser.Add(model);
            }
            dr.Close();
            return kseouser;
        }
        
    }
}
