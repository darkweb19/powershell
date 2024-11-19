<#
.SYNOPSIS
Evaluate grades and Store a message in an array
.Description 
First tests to see if the stored mark is within the range: 1-100.
If the grade is NOT within the rande, a message on the screen will display "Invalid Grade" (is it stored in array as well?)

 If the mark is within the acceptable
.Example
Enter student grade for [student name in arrayy] : 80
.Notes
Author: Sujan Shrestha
DateLastModified : Nov 19, 2024

#>


$UserResponse = "y"
$Global:Grades = @() 

# Clear console and display banner
Clear-Host
Write-Host "---------------------------"
Write-Host "       Student Grades      "
Write-Host "---------------------------"


while ($UserResponse -ne "n") {
    foreach ($Name in $Global:Names) {
        $Grade = Read-Host "Enter percentage grade for [$Name]"
        $Global:Grades += $Grade
    }
    $UserResponse = Read-Host "Do you wish to continue entering grades? [y/n]"
}
