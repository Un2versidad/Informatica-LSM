using System;
using System.Diagnostics;
using System.Net;
using System.Windows.Forms;
namespace Programacion
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        public void copy(string x, string f)
        {
            Clipboard.SetText(new WebClient().DownloadString(x));
            MessageBox.Show("Se ha copiado el código en su portapapeles", f);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            copy("https://raw.githubusercontent.com/qzxtu/Informatica/main/C%2B%2B/Triangulo/C%2B%2B.cpp", "Triangulo");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            copy("https://raw.githubusercontent.com/qzxtu/Informatica/main/C%2B%2B/Paralelogramo/C%2B%2B.cpp", "Paralelogramo");
        }

        private void button3_Click(object sender, EventArgs e)
        {
            copy("https://github.com/qzxtu/Informatica/blob/main/C%2B%2B/Rectangulo/C%2B%2B.cpp", "Rectangulo");
        }

        private void button4_Click(object sender, EventArgs e)
        {
            copy("https://raw.githubusercontent.com/qzxtu/Informatica/main/C%2B%2B/Cuadrado/C%2B%2B.cpp", "Cuadrado");
        }

        private void button8_Click(object sender, EventArgs e)
        {
            copy("https://github.com/qzxtu/Informatica/blob/main/C/Triangulo/ConsoleApplication3/ConsoleApplication3.cpp", "Triangulo");
        }

        private void button7_Click(object sender, EventArgs e)
        {
            copy("https://raw.githubusercontent.com/qzxtu/Informatica/main/C/Paralelogramo/ConsoleApplication4/ConsoleApplication4.cpp", "Paralelogramo");
        }

        private void button6_Click(object sender, EventArgs e)
        {
            copy("https://raw.githubusercontent.com/qzxtu/Informatica/main/C/Rectangulo/ConsoleApplication2/ConsoleApplication2.cpp", "Rectangulo");
        }

        private void button5_Click(object sender, EventArgs e)
        {
            copy("https://raw.githubusercontent.com/qzxtu/Informatica/main/C/Cuadrado/Cuadrado/Cuadrado.cpp", "Cuadrado");
        }

        private void button12_Click(object sender, EventArgs e)
        {
            copy("https://raw.githubusercontent.com/qzxtu/Informatica/main/Python.py", "  ");
        }

        private void button20_Click(object sender, EventArgs e)
        {
            copy("https://raw.githubusercontent.com/qzxtu/Informatica/main/Vbs%201.txt", "  ");
        }

        private void button16_Click(object sender, EventArgs e)
        {
            copy("https://raw.githubusercontent.com/qzxtu/Informatica/main/scilab%20(3).sce", "  ");
        }

        private void button9_Click(object sender, EventArgs e)
        {
            Process.Start("https://github.com/qzxtu/Informatica");
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            MessageBox.Show("Kelly Chung, Akemi Gómez, Franklin Leon, Sebastian Leong y Angélica Qiu", "Informatica 12°B");
        }
    }
}
