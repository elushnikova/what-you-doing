property english : {title:"What are you doing?", earn:"Work for money", other:"Something else", cantAnswer:"Can't answer now"}
property russian : {title:"Что ты делаешь?", earn:"Работаю за деньги", other:"Делаю что-то другое", cantAnswer:"Не могу сейчас ответить"}

set userLocale to do shell script "defaults read -g AppleLocale"
set ui to english
if userLocale starts with "ru" then
  set ui to russian
end if

set dialogButtons to {(earn of ui), (other of ui), (cantAnswer of ui)}
set cantAnswer to item 3 of dialogButtons

set userInput to display dialog (title of ui) ¬
  default answer "" ¬
  buttons dialogButtons ¬
  default button cantAnswer
set userResponse to button returned of userInput
set userComment to text returned of userInput

if userComment is equal to "" then
  return userResponse
end if

return userResponse & " (" & userComment & ")"
