#Standalone script. 
#  Start > run > gpedit.msc
#  Computer configuration > Windows settings > Scripts 
#  Add this script under shutdown scripts
#You'll need to run this too: Set-ExecutionPolicy Unrestricted

[string]$SourceCode =  @"
    using System.Runtime.InteropServices;
    using System;
    public static class StaticMethods
	{
		[DllImport("XInput1_3.dll", CharSet = CharSet.Auto, EntryPoint = "#103")]
		public static extern int FnOff(int i);

		public static void TurnOff()
		{
			for (int i = 0; i < 4; i++)
			{
				FnOff(i);
			}
		}
	}
"@

	
add-type -TypeDefinition $SourceCode

[StaticMethods]::TurnOff()
