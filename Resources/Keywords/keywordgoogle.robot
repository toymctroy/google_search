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

*** Comments ***
#Search_1_1_003
Click link 3
    Click       xpath=(//*[@class='LC20lb MBeuO DKV0Md'])[3]
Verify Click Link 3 Success
    ${text}    Get Text   xpath=//*[@id="readme"]/div[2]/article/h1
    Should Match   ${text}       ${Verify_text_3}


#Search_1_1_004 ,#Search_1_1_005
Click link 4
    Click       xpath=(//*[@class='LC20lb MBeuO DKV0Md'])[4]
Verify Click Link 4 Success
    ${text}    Get Text   xpath=//*[@class="blog-name detail"]
    Should Match   ${text}       ${Verify_text_4}
Click link 5
    Click       xpath=(//*[@class='LC20lb MBeuO DKV0Md'])[5]
Verify Click Link 5 Success
    ${text}    Get Text   xpath=//*[@id="readme"]/div[2]/article/h1
    Should Match   ${text}       ${Verify_text_5}

#Search_1_1_006
Input Search Keywords TH
    Fill Text  xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input       ${search_text_th}
Verify Search Success TH
    ${text}    Get Text   xpath=(//*[@class='LC20lb MBeuO DKV0Md'])[1]
    Should Match    ${text}       ${verify_text_th}
Press Change Language Button  
    Keyboard Key    press     Tide
Input Search Keywords ENG
    Fill Text  xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input       ${search_text_eng}
Verify Search Success ENG
    ${text}    Get Text   xpath=(//*[@class='LC20lb MBeuO DKV0Md'])[1]
    Should Match    ${text}       ${verify_text_eng}
    