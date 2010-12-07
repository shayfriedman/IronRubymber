using System;
using System.Diagnostics;
using System.IO;

namespace IronRubymber
{
	class Program
	{
		static void Main(string[] args)
		{
			// Change working directory to the "bundle" dir
			// This is needed to run the IronRuby interpreter smoothly
			Directory.SetCurrentDirectory(Path.Combine(Directory.GetCurrentDirectory(), "bundle"));

			// Run the IronRuby interpreter with the customized cucumber runner file			
			Process process = Process.Start(new ProcessStartInfo("ir.exe", "runner")
			              	{
			              		UseShellExecute = false // Needed for the output to appear on the same console
			              	});

			process.WaitForExit();

			// Exit with the same exit code of the cucumber runner
			Environment.Exit(process.ExitCode);
		}
	}
}
