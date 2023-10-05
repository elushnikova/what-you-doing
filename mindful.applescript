set dialogButtons to {"Work for money", "Something else", "Can't answer now"}
set cantAnswer to item 3 of dialogButtons

set userInput to display dialog "What are you doing?" ¬
  default answer "" ¬
  buttons dialogButtons ¬
  default button cantAnswer
set userResponse to button returned of userInput
set userComment to text returned of userInput

if userComment is equal to "" then
  return userResponse
end if

return userResponse & " (" & userComment & ")"
