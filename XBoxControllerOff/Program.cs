using System.Runtime.InteropServices;

namespace XBoxTurnOffController
{
    public static class Program
    {
        [DllImport("XInput1_3.dll", CharSet = CharSet.Auto, EntryPoint = "#103")]
        internal static extern int FnOff(int i);

        static void TurnOff()
        {
            int result = FnOff(0);
        }

        static void Main(string[] args)
        {
            TurnOff();
        }
    }
}
