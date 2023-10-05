set userInput to display dialog "What are you doing?" default answer "" buttons {"Work for money", "Work without money", "Something else"} default button "Something else"
set userResponse to button returned of userInput
set userComment to text returned of userInput

if userComment is equal to "" then
  return userResponse
end if

return userResponse & " (" & userComment & ")"
