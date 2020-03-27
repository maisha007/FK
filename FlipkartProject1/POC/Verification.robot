** Test Cases **
Open Application
    Open Application    ${appiumHost}    ${automationName}    platformName=${platformName}    deviceName=${deviceName}   udid=${udid}    platformVersion=${platformVersion}      appPackage=${appPackage}  
   # Tap    ${SelectApiUrl}    Production
    Sleep    3
    Capture Page Screenshot


** Settings **
Library    AppiumLibrary    run_on_failure=Capture Page Screenshot



Test Teardown    Close Application
* Variable *

#Configuration
${appiumHost}=        http://127.0.0.1:4723/wd/hub
${automationName}=    UiAutomator2
${platformName}=      Android
${platformVersion}=   10
${udid}=              emulator-5554
${deviceName}=        Android Test1A
${appPackage}=        com.android.chrome
#${appActivity}=       com.flipkart.android.SplashActivity