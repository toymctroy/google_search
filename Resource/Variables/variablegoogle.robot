*** Settings ***
Library   Browser

*** Variables *** 
${search_text_1}    Robot Framework
${verify_text_1}    Robot Framework
${search_text_2}    แจ็กสัน หวัง
${verify_text_2}    แจ็กสัน หวัง - วิกิพีเดีย
${search_text_th}   แจ็กสัน หวัง ประวัติ
${search_text_eng}  jackson wang history
${verify_text_th}   แจ็กสัน หวัง - วิกิพีเดีย
${verify_text_eng}  Jackson Wang - Wikipedia
${verify_text_3}    Robot Framework
${verify_text_4}    Robot Framework คืออะไร?
${verify_text_5}    ลองเขียน System Test ด้วย Robot Frameworks
${google_url}       https://www.google.com/ 
${browser}          chromium

${input_search_path}    xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
${click_search_button_path}     xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[2]/div[5]/center/input[1]
