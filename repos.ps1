#get path to powershell scripts

$pSScriptsPath = Get-ChildItem -Path Env:PATH | %{$_.Value.split(';')} | %{if($_ -like "*\PowershellScripts") {$_}}

#change directory to powershell scripts directory
cd $pSScriptsPath
#change directory to parent of powershell directory, which for me is my repositories directory
cd ..
