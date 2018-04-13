using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 用户表
    /// </summary>
    public class Kseouser
    {
        public int ID { get; set; }// 用户编号
        public string LoginName { get; set; }//用户登录名
        public string   Password { get; set; }//用户密码
        public int  State { get; set; }//用户状态
        public string Email { get; set; }//用户邮箱
    }
}
