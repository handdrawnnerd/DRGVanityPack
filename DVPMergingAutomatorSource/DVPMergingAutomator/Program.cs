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
            string[] allScripts = Directory.GetFiles(".", "*.ds");

            IEnumerable<string> ranScripts = GetRanScripts();

            IEnumerable<string> scriptsToRun = allScripts.Where(x => ! ranScripts.Contains(x));

            foreach (string scriptPath in scriptsToRun)
            {
                Execute(scriptPath);
            }

            List<string> newRanScripts = new List<string>(ranScripts.Concat(scriptsToRun));

            File.WriteAllLines(ranScriptsRosterFileName, newRanScripts);         // technically these should be just all .ds files in the folder
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
