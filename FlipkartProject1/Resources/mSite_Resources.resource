*** Settings ***

Library    AppiumLibrary                
Resource    ../PageObjects/mSite_PageElements.resource

*** Variables ***

${browser}=  chrome
${webviewDevtoolsPort}=  9543
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
    Open Application    ${appiumHost}    ${automationName}    platformName=${platformName}    deviceName=${deviceName}   udid=${udid}    platformVersion=${platformVersion}  appPackage=${appPackage}  appActivity=${appActivity}  webviewDevtoolsPort=${webviewDevtoolsPort}  noReset=true 

    #Click Element    class=android.widget.Button
    #Sleep    2
    #Click Element   class=android.widget.Button
    #Sleep    2
    # Click Element    class=android.widget.Button
    #Sleep    2
    #Set Appium Timeout    10
    Sleep    10    
    
Browse URL
    Go To Url        ${url}  
    Sleep    10  
    
Login
    Click Text      text=Login    
    Sleep    5   
    Click Text    text=Use Email-ID        
    Sleep    10   
    Click Text   text=Continue
    Sleep    5    
    Click Text   text=Continue
    Sleep    8    

Menu
    Click Text    text=menu  
    Sleep    3    
    
Life Insurance
    Click Text    text=Insurance
    Sleep    5
    
Select Insurance Plan
    Click Text       text=1 Lakh Life Insurance Cover 
    Sleep    5   
    Click Text       text=Continue   
    Sleep    5    
    
Declaration
    Click Text    text=High Cholesterol, High Blood Pressure  
    Click Text    text=Cancer
    Click Text    text=Stroke or any other heart diseases
    Click Text   text=Diabetes   
    Click Text    text=Any of the other diseases mentioned
    Sleep    5
    Click Text    text=closeBlack-c9684eaa 
    Sleep    5
    
Navigate to Enter Policy holder details
    Click Text    text=Confirm  
    Sleep    5
    
View Policy Deatils
    Click Text    text=Know More  
    Sleep    5  
    
Hide Policy Details
    Click Text    text=Enter Policy Holder Details
    Sleep    3
    
Back
    Click Text    text=back-e9e0ceba
    Sleep    5
    
Back to Home
    Click Text    text=javascript:void(0)    
    Sleep    10
       
My Orders
    Click Text    text=My Orders
    Sleep    5
    
My Insurance Policy
    Click Text    text=Insurance
    Sleep    5
    
Insurance Order Deatils
    Click Text    text=1 Lakh Life Insurance Cover
    Sleep    5
    
Back to My Insurance Policy
    Back
    
Back to My Orders
    Back to Home
  
Back to Home Screen
    Back
   
My Account
    Swipe By Percent    50    85    50    30          
    Sleep    5
    Click Text     text=My Account
    Sleep    5
    
Logout
    Swipe By Percent    50    85    50    50  
    Sleep    5
    Click Text        text=Logout of all devices
    Sleep    5
    Click Text       text=YES   
    Sleep    10   

    
Close All Application
    Close All Applications
