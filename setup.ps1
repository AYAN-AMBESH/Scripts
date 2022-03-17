if( Test-Path env:VIRTUAL_ENV)
{
 Write-Host 'You are already in a virtual enviorment'
 $vnv= Read-Host 'Do you want to deactivate virtual env? y/n :'
 if($vnv -eq 'y')
 {
    deactivate
    Exit
 }
}
$set_env = Read-Host 'Do you want to create virtual env? y/n :'
if($set_env -eq 'y')
{
    $env = Read-Host'Name your virtual enviorment: '
    $down_env = virtualenv $env
    & $down_env 
}
Write-Host 'Activating your virtual enviorment'
$venv = Read-Host 'Enter your virtual enviorment name: '
$ready = Read-Host 'Do you want to activate virtual enviorment? y/n :'

if($ready -eq 'y')
{
    $activate_Env = "./$venv/bin/activate.ps1"
    & $activate_Env
}
elseif ($ready -eq 'n') 
{
 Exit
}