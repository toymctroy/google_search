*** Settings ***
Resource    ${CURDIR}/../Resources/keywords/keywordgoogle.robot
Resource    ../Resources/Localized/${LANG}/GoogleTextSearch.robot



*** Test Cases ***
Search_1_1_001  
    [Tags]    Search    On_hold
    Open Web Browser Google Web
    Input Search Keywords    ${search_text_1}
    Click Google Search Button 
    Verify Search Success    ${verify_text_1}    1

Search_1_1_002
    [Tags]    Search    Web
    Open Web Browser Google Web
    Input Search Keywords    ${search_text_2}
    Click Google Search Button 
    Verify Search Success    ${verify_text_2}    1

Search_1_1_003
    [Tags]    Search    Click
    Open Web Browser Google Web
    Input Search Keywords    ${search_text_1}
    Click Google Search Button 
    Verify Search Success    ${verify_text_1}    1
    ${get_url_href}    Click link    3  
    Verify Click Link Success    ${get_url_href}

Search_1_1_004    
    [Tags]    Search
    Open Web Browser Google Web
    Input Search Keywords    ${search_text_1}
    Click Google Search Button 
    Verify Search Success    ${verify_text_1}    1
    Click And Verify Link 3 4 5 

Search_1_1_005 
    [Tags]    Search
    Open Web Browser Google Web
    Input Search Keywords    ${search_text_1}
    Click Google Search Button 
    Verify Search Success    ${verify_text_1}    1
    Click And Verify Link 3 5

Search_1_1_006
    #--variable LANG:("EN" or "TH")
    [Tags]    Search
    Open Web Browser Google Web
    Input Search Keywords    ${search_text}
    Click Google Search Button 
    Verify Search Success    ${verify_text}    1
    Click Go back Button

*** Comments ***
    Open Web Browser Google Web
    Input Search Keywords TH
    Click Google Search Button 
    Verify Search Success TH
    Click Go back Button
    Press Change Language Button
    Input Search Keywords ENG
    Click Google Search Button 
    Verify Search Success ENG
