*** Settings ***

Library    AppiumLibrary              

*** Variables ***

${udid}=  emulator-5554
${appiumHost}=        http://127.0.0.1:4723/wd/hub
${automationName}=    UiAutomator2
${platformName}=      Android
${deviceName}=        Pixel_3_API_24
${appPackage}=        com.flipkart.android
${appActivity}=       com.flipkart.android.SplashActivity
${platformVersion}=   7.0
${email}=             ganga.ratna@gmail.com
${pass}=              Maisha*007



*** Test Cases ***

LaunchApp
    LaunchDevice
    
Login
    LoginToApp 
    
InsuranceLanding
    InsuranceLanding
    
MyOrdersInsurance
    MyOrders
   
    
*** Keywords ***
LaunchDevice
    Open Application    ${appiumHost}    ${automationName}    platformName=${platformName}    deviceName=${deviceName}   udid=${udid}    platformVersion=${platformVersion}  appPackage=${appPackage}  appActivity=${appActivity}  
    Sleep    15 
    
LoginToApp 
    Click Text    text=NONE OF THE ABOVE
    Sleep    2    
    Click Text    text=Use Email-ID
    Sleep    5    
    Input Text    class=android.widget.EditText    ${email}
    Sleep    5    
    Click Text    text=Continue
    Sleep   5    
    Input Password    class=android.widget.EditText    ${pass}
    Sleep    5   
    Click Text    text=Continue
    Sleep    15  
    
InsuranceLanding
    Click Element    class=android.widget.ImageButton
    Sleep    10   
    Click Text    text=Insurance 
    Sleep    15   
    Click Text    text=1 Lakh Life Insurance Cover
    #Click Text    text=Continue    
    #Sleep    10     
    #Click Text    text=Any of the other
    #Sleep    10    
    #Click Text    text=closeBlack-c9684eaa  
    #Sleep    5           
    #Click Text    text=High Cholesterol, High Blood Pressure    
    #Click Text    text=Cancer      
    #Click Text    text=Stroke or any other heart diseases
    #Click Text    text=Diabetes
    #Click Text    text=Any of the other diseases mentioned in the T&Cs. I also agree to all the 
    #Sleep    5    
    #Click Text    text=closeBlack-c9684eaa
    #Sleep    5    
    #Click Text    text=Confirm   
    #Sleep    5     
    #Input Text    xpath=//android.view.View[@text='Full Name*']    Mahesh MG
    #Click Text    text=arrow_drop_down-f5e5a7a8   
    #Sleep    3     
    #Click Text    text=Continue to Payment
    #Input Text    xpath=//android.view.View[@text='Mobile Number*']    8867732508
    #Input Text    xpath=//android.view.View[@text='Email Address*']    mahesha@robosoftin.com
    #Click Text    text=Continue to Payment  
    #Sleep    5              
    #Click Text    text=back-e9e0ceba    
    #Sleep    5    
    #Click Text    text=back-e9e0ceba  
    Sleep    5      
    Click Text    text=back-e9e0ceba    
    Sleep    10   
    
MyOrders               
    Click Element    class=android.widget.ImageButton
    Sleep    10 
    Click Text    text=My Orders    
    Sleep    10    
    Click Text    text=Insurance    
    Sleep    10  
    Click Text    text=1 Lakh Life Insurance Cover    
    Sleep    10    
    Click Text    text=back-e9e0ceba    
    Sleep    10    
    Click Text    text=javascript:void(0)    
    #Sleep    10
    #Click Element    class=android.widget.ImageButton
    #Sleep    10
    #Click Element    class=android.widget.ImageButton
    #Sleep    5
    # Scroll Down    text=Flipkart Plus Zone,  text=My Coupons
    # Sleep    5
    #Scroll Down    class=android.widget.FrameLayout
    #Sleep    5
    #Scroll Down    xpath=//android.widget.TextView[@text='My Orders']
    #Sleep    5
    #Scroll Down    text=Logout of all devices
    #Sleep    5
    #Click Text    text=Logout of all devices
    #Click Text    text=YES
    Sleep    15    
    [Teardown]    Close All Applications
    
    
      
    
       
        
    
  