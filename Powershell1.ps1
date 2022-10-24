$numbers = Read-Host "What number would you want?"

Do {
$firstname = Read-Host " Enter firstname"
$lastname = Read-Host "Enter lastname"
$fullname = Read-Host " Enter fullname"
$userprincipalname = Read-Host " Enter userprincipalname"
$Samaccountname = Read-Host "Enter SamAccountname"
$new=Read-Host "Enter the new password" -AsSecureString




New-ADUser -Name $fullname -GivenName $firstname -Surname $lastname -UserPrincipalName $userprincipalname -SamAccountName $Samaccountname
Set-ADAccountPassword $Samaccountname -NewPassword $new
Enable-ADAccount $Samaccountname
Get-ADUser $Samaccountname



$numbers = $numbers - 1
Write-Host "THE CURRENT VALUE OF THE VARIABLE IS $NUMBERS"



} While ($NUMBERS -GT 0)