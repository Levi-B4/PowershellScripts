# PowershellScripts
Assortment of PowerShell scripts I use to make development more streamlined.

## how to run
WARNING: Always check scripts you get online before running them.

1. In environment variables:
    - add this repository to PATH
    - add .ps1 to PATHEXT
1. open powershell as admin
1. unblock files
    - ```Get-Children <repositoryPath> | Unblock-File```
1. Run desired script through powershell
    - ```& <scriptName>```
    - ```& testScript```
