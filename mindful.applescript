set userInput to display dialog "What are you doing?" default answer "" buttons {"Work for money", "Work without money", "Something else"} default button "Something else"
set userResponse to button returned of userInput
set userComment to text returned of userInput

return userResponse & " (" & userComment & ")"
