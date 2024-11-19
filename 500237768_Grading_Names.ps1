
<#
.SYNOPSIS
Store Student names in an array
.Description 
Uses read-host to prompt and add student names into an array
.Example
Enter student Full name [Jane Doe];
.Notes
Author: Sujan Shrestha
DateLastModified : Nov 19, 2024

#>

$UserResponse = "Y"
$Global:Names = @() 

# Clear console
Clear-Host
Write-Host "--------------"
Write-Host "Student Names"
Write-Host "--------------"


# Loop for entering student names
while ($UserResponse -ne "n") {
    $Name = Read-Host "Enter student name [Example: Jane Doe]"
    $Global:Names += $Name
    $UserResponse = Read-Host "Do you wish to enter another name? [y/n]"
}
