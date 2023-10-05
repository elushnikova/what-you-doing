set dialogText to "What are you doing?"
display dialog dialogText buttons {"Billable work", "Non-billable work", "Something else"} default button "Something else"
set userResponse to button returned of result
return userResponse
