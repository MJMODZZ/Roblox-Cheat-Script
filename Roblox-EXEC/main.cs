using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WeAreDevs_API;

namespace Robloxinator_v2
{
    public partial class mainpage : Form
    {
        ExploitAPI module = new ExploitAPI();

        public mainpage()
        {
            InitializeComponent();
        }

        private void siticoneButton1_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog1 = new OpenFileDialog();
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                openFileDialog1.Title = "Open";
                fastColoredTextBox1.Text = File.ReadAllText(openFileDialog1.FileName);
            }
        }

        private void mainpage_Load(object sender, EventArgs e)
        {

        }

        private void siticoneButton2_Click(object sender, EventArgs e)
        {
            LuaScriptList.Items.Clear();//Leert alle items in der LuaScriptList
            Functions.PopulateListBox(LuaScriptList, "./Scripts", "*.txt"); //Erkennt alle .txt dateien als lua scripts
            Functions.PopulateListBox(LuaScriptList, "./Scripts", "*.js"); //Erkennt alle .lua dateien als lua scripts
        }

        private void LuaScriptList_SelectedIndexChanged(object sender, EventArgs e)
        {
            fastColoredTextBox1.Text = File.ReadAllText($"./Scripts/{LuaScriptList.SelectedItem}");
        }

        private void siticoneButton5_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog1 = new SaveFileDialog();
            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                using (Stream s = File.Open(saveFileDialog1.FileName, FileMode.CreateNew))
                using (StreamWriter sw = new StreamWriter(s))
                {
                    sw.Write(fastColoredTextBox1.Text);
                }
            }
        }

        private void siticoneButton4_Click(object sender, EventArgs e)
        {
            fastColoredTextBox1.Clear();
        }

        private void siticoneButton3_Click(object sender, EventArgs e)
        {
            module.SendLuaScript(fastColoredTextBox1.Text);
        }

        private void AttachButton_Click(object sender, EventArgs e)
        {
            module.LaunchExploit();
        }
    }
}
