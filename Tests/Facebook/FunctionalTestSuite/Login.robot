*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${web_url}  https://www.google.com/
${search_p}     Amazon.in
*** Test Cases ***
Login screen test
  [Documentation]  this is login screen
  [Tags]  user
  log  hello

registration screen test
  [Documentation]  this is reg screen
  [Tags]  user
  log  sucess

Admin screen test
  [Documentation]  admin screen
  [Tags]  admin
  log  Admin

google test

    [Documentation]  google test
    [Tags]  internet
    open Browser  ${web_url}     chrome
    Maximize Browser Window
    Enter Search Data
    Submit form
    Sleep  5s
    close Browser

*** Keywords ***
Enter Search Data
    Input Text  name:q  ${search_p}
