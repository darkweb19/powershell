# Script: YourStudentID_Grade_Dictionary.ps1
<#
.SYNOPSIS
Converts arrays to a hash table
.Description
Converts the "Names" array and "message" array to a dictionary
.Example
Murray Saul = unsatisfactory
Amy Ng = Excellent
.Notes
Author : Sujan Shrestha
LastModifiedDate : Nov 19,2024
#>

# Initialize a temporary array
$Global:Temp = @()

# Clear console and display banner
Clear-Host
Write-Host "---------------------------"
Write-Host "     Grade Dictionary      "
Write-Host "---------------------------"

# Construct a temporary array of key-value pairs
for ($i = 0; $i -lt $Global:Names.Count; $i++) {
    $Global:Temp += "$($Global:Names[$i])=$($Global:Messages[$i])"
}

# Convert the Temp array to a hash table
$Global:Hash = $Global:Temp | Out-String | ConvertFrom-StringData

# Display and save the hash table
$Global:Hash | Tee-Object -FilePath "Scores.txt"
