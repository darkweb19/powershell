# Script: YourStudentID_Grading_Messages.ps1
<#
.SYNOPSIS
Evaluate gradesand store a message into an array
.Description
First tests to see if the stored mark is within the range: 1-100.
If the grade NOT within the range, a message on the screen will display "INVALID Grade" (is it stored in the array as well?)
If the mark is within the acceptable range, then the following message will be displayed based on their value:
Greater than 79 - Display Excellent
Between 67 and 79- Display Satisfactory
less than 67 - display ubnsatisfactory

.Example (not for user to enter or display - what message to add to the message array)
Murray Saul- 45 - Unsatisfactory
Amy Ng - 99 -Excellent
Mohammed Patel- 76 - Satisfactory
Betty WHite - 105 - INVALID Grade

.Notes
Author : Sujan Shrestha
LastModifiedDate : Nov 19, 2024
#>


$Global:Messages = @() # Global empty array to store messages
$Global:Values = 1..100 


$Global:Grades | ForEach-Object {
    if ($_ -notin $Global:Values) {
        $Global:Messages += "Invalid Grade"
    } elseif ($_ -gt 79) {
        $Global:Messages += "Excellent"
    } elseif ($_ -ge 67) {
        $Global:Messages += "Satisfactory"
    } else {
        $Global:Messages += "Unsatisfactory"
    }
}

Write-Host "Grading comments have been added."
