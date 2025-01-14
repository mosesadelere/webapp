*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER_URL}    http://$SUT_IP_ADDRESS

*** Test Cases ***
Validating User Login
    Open Browser    ${SERVER_URL}/login    Chrome
    Input Text    id=username    testuser
    Input Text    id=password    testpassword
    Click Button    id=loginButton
    Page Should Contain    Welcome
    Close Browser

Voting Functionality
    Open Browser    ${SERVER_URL}/vote    Chrome
    Click Button    id=voteForCandidate1
    Page Should Contain    Thank you for voting
    Close Browser

Retrieving Election Results
    Open Browser    ${SERVER_URL}/results    Chrome
    Page Should Contain    Election Results
    Close Browser
    Log    Test Completed
