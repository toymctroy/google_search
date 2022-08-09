*** Settings ***
Resource    ${CURDIR}/../Variables/variablegoogle.robot
Resource    ${CURDIR}/../Repository/xpathgoogle.robot

*** Keywords ***
Click Go back Button
    Go Back

#Search
Open Web Browser Google Web
    Open browser    ${google_url}    ${browser} 

Input Search Keywords 
    [Arguments]    ${search_text} 
    Fill Text    ${input_search_path}    ${search_text}

Click Google Search Button
    Click    ${click_search_button_path}

Verify Search Success 
    [Arguments]    ${Verify_text}    ${link_number}
    ${text}    Get Text    xpath=(//*[@class='yuRUbf'])[${link_number}]/a/h3
    Should Contain    ${text}    ${Verify_text}

Click link 
    [Arguments]    ${link_number}
    ${get_url_href}    Get Attribute    xpath=(//*[@class='yuRUbf'])[${link_number}]/a    href
    Click    xpath=(//*[@class='yuRUbf'])[${link_number}]/a/h3
    #Set Test Variable   ${get_url_href} 
    RETURN    ${get_url_href} 
Verify Click Link Success
    [Arguments]    ${get_url_href}  
    ${get_url_page}    Get Url
    Should Contain    ${get_url_page}    ${get_url_href}  

Click And Verify Link 3 4 5 
        FOR    ${index}    IN RANGE    3    6
            ${get_url_href}    Get Attribute    xpath=(//*[@class='yuRUbf'])[${index}]/a    href
            Click    xpath=(//*[@class='yuRUbf'])[${index}]/a/h3

            ${get_url_page}    Get Url
            Should Contain    ${get_url_page}    ${get_url_href} 

            Go Back
        END

Click And Verify Link 3 5
        FOR     ${index}    IN RANGE    3   6           
            Continue For Loop If    ${index}==4      
                ${get_url_href}     Get Attribute      xpath=(//*[@class='yuRUbf'])[${index}]/a   href
                Click               xpath=(//*[@class='yuRUbf'])[${index}]/a/h3

                ${get_url_page}     Get Url
                Should Contain    ${get_url_page}      ${get_url_href} 

                Go Back 
        END

    