#get path to powershell scripts
$scriptsRepoPath = Get-ChildItem -Path Env:PATH | %{$_.Value.split(';')} | %{if($_ -like "*\PowershellScripts") {$_}}
Write-Host "path to ps scripts: $scriptsRepoPath"

#create path to output file
$testWriteFilePath = "$scriptsRepoPath\testWriteFile.ps1"

#check if file exists and create it if not
if(Test-Path -Path $testWriteFilePath -PathType leaf){
	#clear contents of output file
	Clear-Content $testWriteFilePath
	Write-Host 'file found and cleared'
}else{
	New-Item -ItemType File -Path $testWriteFilePath 
	Write-Host 'file not found, file created'
}

#declares file location
Write-Host "File Location: $testWriteFilePath"

#write to test file
"Write-Host `'This command was written to this file by writeToTestFile.ps1`'" > $testWriteFilePath
