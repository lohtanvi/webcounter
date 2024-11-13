*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is set the value becomes 10
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Input Text  value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa