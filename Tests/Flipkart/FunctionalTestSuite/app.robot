*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${google_search}    https://www.google.com/
${search_query}     flipkart
${search_product}   Iphone
*** Test Cases ***
google search test
    [Documentation]  Test to open google
    [Tags]  google
    open Browser    ${google_search}    chrome
    Maximize Browser Window
    Search data
    Submit form
    click Element   class:LC20lb

flipkart search test
    [Documentation]  Test for flipkart
    [Tags]  Shopping app
    sleep  2s
    click Button   class:_2KpZ6l
    sleep  2s
    Search flip data
    click Button    class:L0Z3Pu
    sleep  5s
    close Browser



*** Keywords ***
Search data
    Input Text  name:q  ${search_query}
Search flip data
    Input Text  name:q  ${search_product}
