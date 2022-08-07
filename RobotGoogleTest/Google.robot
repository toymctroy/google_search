*** Settings ***
Resource    ${CURDIR}/../Resource/keywords/keywordgoogle.robot

*** Test Cases ***
Search_1_1_001
    Open Web Browser Google Web
    Input Search Keywords       ${search_text_1}
    Click Google Search Button 
    Verify Search Success       ${verify_text_1}    1

Search_1_1_002
    Open Web Browser Google Web
    Input Search Keywords       ${search_text_2}
    Click Google Search Button 
    Verify Search Success       ${verify_text_2}    1

Search_1_1_003
    Open Web Browser Google Web
    Input Search Keywords       ${search_text_1}
    Click Google Search Button 
    Verify Search Success       ${verify_text_1}    1
    Click link  3
    Verify Click Link Success   ${verify_text_4} 

*** Comments ***

Search_1_1_003
    keywordgoogle.Open Web Browser Google Web
    keywordgoogle.Input Search Keywords 1
    keywordgoogle.Click Google Search Button 
    keywordgoogle.Verify Search Success 1
    keywordgoogle.Click link 3
    keywordgoogle.Verify Click Link 3 Success

Search_1_1_004
    keywordgoogle.Open Web Browser Google Web
    keywordgoogle.Input Search Keywords 1
    keywordgoogle.Click Google Search Button 
    keywordgoogle.Verify Search Success 1
    keywordgoogle.Click link 3
    keywordgoogle.Verify Click Link 3 Success
    keywordgoogle.Click Go back Button
    keywordgoogle.Click link 4
    keywordgoogle.Verify Click Link 4 Success
    keywordgoogle.Click Go back Button
    keywordgoogle.Click link 5
    keywordgoogle.Verify Click Link 5 Success

Search_1_1_005
    keywordgoogle.Open Web Browser Google Web
    keywordgoogle.Input Search Keywords 1
    keywordgoogle.Click Google Search Button 
    keywordgoogle.Verify Search Success 1
    keywordgoogle.Click link 3
    keywordgoogle.Verify Click Link 3 Success
    keywordgoogle.Click Go back Button
    keywordgoogle.Click link 5
    keywordgoogle.Verify Click Link 5 Success

Search_1_1_006
    keywordgoogle.Open Web Browser Google Web
    keywordgoogle.Input Search Keywords TH
    keywordgoogle.Click Google Search Button 
    keywordgoogle.Verify Search Success TH
    keywordgoogle.Click Go back Button
    #keywordgoogle.Press Change Language Button
    keywordgoogle.Input Search Keywords ENG
    keywordgoogle.Click Google Search Button 
    keywordgoogle.Verify Search Success ENG
