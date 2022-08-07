*** Settings ***
Resource    ${CURDIR}/../Variables/variablegoogle.robot

*** Keywords ***
Open Web Browser Google Web
    open browser    ${google_url}      ${browser} 
    #New Page    ${google_url}
Click Google Search Button
    Click       ${click_search_button_path}
Click Go back Button
    Go Back

#Search_1_1_001
Input Search Keywords 
    [Arguments]     ${search_text} 
    Fill Text   ${input_search_path}       ${search_text}
Verify Search Success 
    [Arguments]      ${Verify_text}     ${link_number}
    ${text}    Get Text   xpath=(//*[@class='LC20lb MBeuO DKV0Md'])[${link_number}]
    Should Match   ${text}       ${Verify_text}
Click link 
    [Arguments]     ${link_number}
    Click       xpath=(//*[@class='LC20lb MBeuO DKV0Md'])[${link_number}]
Verify Click Link Success
    [Arguments]    ${Verify_text}  
    ${text}    Get Text   xpath=//*[@class="blog-name detail"]
    Should Match   ${text}       ${Verify_text}

#Search_1_1_002
#Input Search Keywords 2
#    Fill Text   ${input_search_path}       ${search_text_2}
#Verify Search Success 2
#    ${text}    Get Text   xpath=(//*[@class='LC20lb MBeuO DKV0Md'])[1]
#    Should Match   ${text}       ${Verify_text_2}

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
    