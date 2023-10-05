set userInput to display dialog "What are you doing?" ¬
  default answer "" ¬
  buttons {"Work for money", "Something else", "Can't answer now"} ¬
  default button "Can't answer now"
set userResponse to button returned of userInput
set userComment to text returned of userInput

if userComment is equal to "" then
  return userResponse
end if

return userResponse & " (" & userComment & ")"
