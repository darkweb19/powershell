

<#
.Synopsis
Displays a Menu for user to select various menu items .Description
Screen will clear and present user with a menu. When the user selects a menu item, it will run a script previously created
to achieve a task. The menu should provide feedback for invalid
menu item entries. The user will be able to make menu item selection until they select to exit the script.
.EXAMPLE
Refer to YouTube video Sample Run in lab 6 instructions
.NOTES
Author: Your Full Name
LastDateModified: Today's Date
#>



do {
    # Clear console and display menu
    Clear-Host
    Get-Content -Path "grading_menu.txt"


   
    $Selection = Read-Host "Please make a selection [1-5]"

    # Handle menu selection
    switch ($Selection) {
        1 { 
            .\500237768_Grading_Names.ps1
            Pause
        }
        2 { 
            .\500237768_Grading_Grades.ps1
            Pause
        }
        3 { 
            .\500237768_Grading_Messages.ps1
            Pause
        }
        4 { 
            .\500237768_Grade_Dictionary.ps1
            Pause
        }
        5 { 
            Write-Host "Exiting the script."
            Pause
            break
        }
        Default { 
            Write-Host "Invalid selection. Please try again."
        }
    }
} while ($true)
