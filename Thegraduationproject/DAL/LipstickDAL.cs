using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using Model;

namespace DAL
{
    public class LipstickDAL
    {
        public static List<Model.Lipstick> GetLipstick()   //查询商品
        {
            string sql = "select * from Lipstick";
            SqlDataReader dr = DBHpelp.ExecuteReader(sql);
            List<Model.Lipstick> Lipstick = new List<Model.Lipstick>();
            Model.Lipstick kso = null; 
            while (dr.Read())
            {
                kso = new Lipstick();
                kso.LipID = (int)dr["LipID"];
                kso.Lphoto = dr["Lphoto"].ToString();
                kso.LTitle = dr["LTitle"].ToString();
                kso.LPrice=(decimal)dr["LPrice"];
                kso.LColor = dr["LColor"].ToString();
                Lipstick.Add(kso);
            }
            dr.Close();
            return Lipstick;
        }

        public int InsertLipstick(Model.Lipstick lipstick)  //添加商品
        {
            return DBHpelp.ExecQuery("INSERT INTO Lipstick ('Lphoto','[LTitle]',[LPrice],'LColor')VALUES('" + lipstick.Lphoto + "','" + lipstick.LPrice + "','" + lipstick.LColor + "')");
        }


        public int DeleteLipstick(int id)  //删除商品
        {
            return DBHpelp.ExecQuery("delete from Lipstick where LipID = " + id + "");
        }
    }
}
