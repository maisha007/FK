*** Settings ***

Library    AppiumLibrary                
Resource    ../PageObjects/mSite_PageElements.resource

*** Variables ***

${browser}=  chrome
${url}=  https://www.flipkart.com
${udid}=  emulator-5554
${appiumHost}=        http://127.0.0.1:4723/wd/hub
${automationName}=    UiAutomator2
${platformName}=      Android
#${deviceName}=        Pixel_XL_API_27
#${deviceName}=        Nexus_6_API_26
${deviceName}=       Pixel_3_API_24
${appPackage}=        com.android.chrome
${appActivity}=       com.google.android.apps.chrome.Main
#${adbExecTimeout}=    120000
#${platformVersion}=   8.1.0
#${platformVersion}=   8.0.0
${platformVersion}=   7.0
${email}=  ganga.ratna@gmail.com
${pass}=   Maisha*007
${policy_holder}=  Mahesha
${ph_number}=      8867732508
${ph_email}=       mahesha@robosoftin.com
${login}=         text=Login

*** Keywords ***

Launch Device
    Open Application    ${appiumHost}    ${automationName}    platformName=${platformName}    deviceName=${deviceName}   udid=${udid}    platformVersion=${platformVersion}  appPackage=${appPackage}  appActivity=${appActivity}  webviewDevtoolsPort=9543  noReset=true 

    #Click Element    class=android.widget.Button
    #Sleep    2
    #Click Element   class=android.widget.Button
    #Sleep    2
    # Click Element    class=android.widget.Button
    #Sleep    2
    Set Appium Timeout    2seconds
    
Browse URL
    Go To Url        ${url}  
    Sleep    10  
    
Login
    Click Text      text=Login    
    Sleep    10    
    Click Text    text=Use Email-ID    
    Sleep    5    
    Click Element    xpath://android.view.View[@index="1"]
    Input Text    xpath://android.view.View[@index="1"]    text
    Click Text   text=Continue
    Input Text    class=android.view.View    qa
    Click Text   text=Continue
    

Menu
    Click Element    ${menu_icon}
    
Life Insurance
    Click Element    ${life_insurance_lnk}
    
Select Insurance Plan
    Click Element       ${insurance_plan}    
    Click Element       ${cont_btn}   
    
Declaration
    Click Element    ${declaration_1}  
    Click Element    ${declaration_2}
    Click Element    ${declaration_3}
    Click Element   ${declaration_4}
    Click Element    ${declaration_5}  
    Click Element    ${close_tc}  
    
Navigate to Enter Policy holder details
    Click Element    ${confirm_declaration}  
    
View Policy Deatils
    Click Element    ${know_more}    
    
Hide Policy Details
    Click Element    ${hide_knowmore}
    
Enetr Policy holder details
    Input Text     ${policyholder_name}    ${policy_holder} 
    Input Text     ${policyholder_number}    ${ph_number}
    Input Text    ${policyholder_email}    ${ph_email}
    
Back
    Click Element    ${back_navgation}
    
Back to Home
    Back
       
My Orders
    Click Element    ${my_orders}
    
My Insurance Policy
    Click Element    ${my_incurance_policy}
    
Insurance Order Deatils
    Click Element    ${insurance_plan}
    
Back to My Insurance Policy
    Back
    
Back to My Orders
    Back
    
Back to Home Screen
    Back
   
My Account
    Execute Script    ${scroll_down}
    Click Element     ${my_account}
    
Logout
    Execute Script    ${scroll_down}    
    Click Element        ${logout_from_all_devices}
    Click Element        ${confirm_logout}    

    
Close All Application
    Close All Applications
