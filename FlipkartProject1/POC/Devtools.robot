*** Settings ***
Library    Selenium2Library    

*** Test Cases ***
Login
    Set Selenium Speed    5seconds
    Open Browser    https://flipkart.com  chrome
    Maximize Browser Window
    Sleep    10    
    Reload Page
    Sleep    10    
    Click Element    xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[1]/div/div[1]/a[5]/span    
    #Click Element    xpath://*[@id="container"]/div/div[1]/div[2]/div[1]/section/div[5]/span    
    #Input Text    xpath://*[@id="2"]    ganga.ratna@gmail.com    
    #Click Element    xpath://*[@id="container"]/div/div[1]/div[2]/div[2]/div/button    
    #Input Text    xpath://*[@id="3"]    Maisha*007    
    #Click Element    xpath://*[@id="container"]/div/div[1]/div[2]/div[2]/div/button    
    #Click Element    xpath://body//a[6]//*[local-name()='svg']    
    #Execute Javascript    window.scrollTo(0,1500)
    #Click Element    xpath://span[contains(text(),'Logout of all devices')]    
    #Click Element    xpath://button[@class='_2R5I8f _28Yu1A']    
    Close Browser
    