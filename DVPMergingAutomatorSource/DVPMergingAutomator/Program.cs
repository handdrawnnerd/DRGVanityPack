using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;

namespace DVPMergingAutomator
{
    class Program
    {
        const string ranScriptsRosterFileName = "RanScritpsRoster.txt";
        const string pathToDAUMExe = "../../../../../DAUM/daum.exe";

        static void Main(string[] args)
        {
            IEnumerable<string> scriptsToRun = Directory.GetFiles(".", "*.ds").Where(x => ! GetRanScripts().Contains(x));

            foreach (string scriptPath in scriptsToRun)
            {
                Execute(scriptPath);
            }

            File.WriteAllLines(ranScriptsRosterFileName, GetRanScripts().Concat(scriptsToRun));
        }

        static IEnumerable<string> GetRanScripts()
        {
            if (File.Exists(ranScriptsRosterFileName))
            {
                return File.ReadLines(ranScriptsRosterFileName);
            }
            else
            {
                return new List<string>();
            }
        }

        
        static void Execute(string sciptPath)
        {
            Process.Start(pathToDAUMExe, new List<string> { "-s", sciptPath }).WaitForExit();
        }
    }
}
