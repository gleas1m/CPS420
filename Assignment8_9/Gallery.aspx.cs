using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


namespace Assignment8_9
{
    public partial class Gallery : System.Web.UI.Page
    {
        ArrayList imageList = new ArrayList();
        string[] filesindirectory;
        private static int i = 0;
        string fileName;
        protected void Page_Load(object sender, EventArgs e)
        {
            //show first image on page load
            filesindirectory = Directory.GetFiles(Server.MapPath("~/imgGallary/"));
            fileName = Path.GetFileName(filesindirectory[i].ToString());
            Image_Display.ImageUrl = "~/imgGallary/" + fileName;
            Image_Display.Visible = true;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //Left Arrow - display image prior unless image is first then goto last
            if(i > 0)
            {
                i--;
                fileName = Path.GetFileName(filesindirectory[i].ToString());
                Image_Display.ImageUrl = "~/imgGallary/" + fileName;
                Image_Display.Visible = true;
            }
            else
            {
                i = (filesindirectory.Count() - 1);
                fileName = Path.GetFileName(filesindirectory[i].ToString());
                Image_Display.ImageUrl = "~/imgGallary/" + fileName;
                Image_Display.Visible = true;
            }

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            //Right Arrow - display next image unless image is last then goto first
            if (i < (filesindirectory.Count()-1))
            {
                i++;
                fileName = Path.GetFileName(filesindirectory[i].ToString());
                Image_Display.ImageUrl = "~/imgGallary/" + fileName;
                Image_Display.Visible = true;
            }
            else
            {
                i = 0;
                fileName = Path.GetFileName(filesindirectory[i].ToString());
                Image_Display.ImageUrl = "~/imgGallary/" + fileName;
                Image_Display.Visible = true;
            }

        }
            
    }
}