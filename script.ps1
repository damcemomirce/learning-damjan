$dc = "mi-whs.local"
$pw = "whiteHat123!#" | ConvertTo-SecureString -asPlainText -Force
$usr = "$dc\administrator"
$pc = "MI-RGSTEST01, MI-RGSTEST02" # Specify the computers that should be joined to the domain.
$creds = New-Object System.Management.Automation.PSCredential($usr$pw)
Add-Computer -ComputerName $pc -LocalCredential $pc\administrator -DomainName $dc -Credential $creds -Restart -Force