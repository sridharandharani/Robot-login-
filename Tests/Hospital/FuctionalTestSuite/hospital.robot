*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}      http://127.0.0.1:5000

*** Test Cases ***
1:Admin Login Test
    [Documentation]  This test is for admin login
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Close Browser

2:Add Patient test
    [Documentation]  This test is to add a patient
    [Tags]  admin
    Open Browser    ${web_url}   chrome
    sleep  2s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Test 2 Name
    sleep  1s
    Test 2 MobileNumber
    sleep  1s
    Test 2 Age
    sleep  1s
    Test 2 Address
    sleep  1s
    Test 2 DOB
    sleep  1s
    Test 2 Place
    sleep  1s
    Test 2 Pincode
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s
    close Browser


3.View All Patients test
    [Documentation]  This test is to add a patient
    [Tags]  admin
    Open Browser    ${web_url}   chrome
    sleep  2s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[2]/a
    sleep  2s
    close browser

4.Search for Patient test
    [Documentation]  This test is to search a patient
    [Tags]  admin
    Open Browser    ${web_url}   chrome
    sleep  2s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[3]/a
    sleep  2s
    Test 2 MobileNumber
    sleep  1s
    click Button   xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    close browser

5.Edit Patient Details test
    [Documentation]  This test is to edit  patient details
    [Tags]  admin
    Open Browser    ${web_url}   chrome
    sleep  2s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[4]/a
    sleep  2s
    Test 2 MobileNumber
    sleep  1s
    click Button   xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    Test 5 Name
    sleep  1s
    Test 5 MobileNumber
    sleep  1s
    Test 5 Age
    sleep  1s
    Test 5 Address
    sleep  1s
    Test 5 DOB
    sleep  1s
    Test 5 Place
    sleep  1s
    Test 5 Pincode
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s
    close browser

6. Delete Patient Test
    [Documentation]  This test is to delete a patient
    [Tags]  admin
    Open Browser    ${web_url}   chrome
    sleep  2s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[5]/a
    sleep  2s
    Test 2 MobileNumber
    sleep  1s
    click Button   xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    close browser










*** Keywords ***
Test 1 admname
    Input Text  name:username  admin

Test 1 Admpass
    Input Text  name:password  12345

Test 2 Name
    Input Text  name:name  naren

Test 2 MobileNumber
    Input Text  name:mobnumber  34567

Test 2 Age
    Input Text  name:age   40

Test 2 Address
    Input Text  name:address  chennai

Test 2 Dob
    Input Text  name:dob   19.01.2001

Test 2 Place
    Input Text  name:place  chennai

Test 2 Pincode
    Input Text  name:pincode    590068

Test 5 Name
    Input Text  name:name  sr

Test 5 MobileNumber
    Input Text  name:mobnumber  34567

Test 5 Age
    Input Text  name:age   39

Test 5 Address
    Input Text  name:address  Pondicherry

Test 5 Dob
    Input Text  name:dob   01-06-2000

Test 5 Place
    Input Text  name:place  Tamilnadu

Test 5 Pincode
    Input Text  name:pincode    590068