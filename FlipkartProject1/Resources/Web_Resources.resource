*** Settings ***
Library    Selenium2Library  
Resource    ../PageObjects/Web_PageElements.resource 

*** Variables ***

${browser}  chrome
${url}  https://www.flipkart.com/
${email}=  ganga.ratna@gmail.com
${pass}=   Maisha*007

*** Keywords ***

LaunchWebsite
    Set Selenium Speed    2
    Open Browser    ${url}  ${browser}
    
Loginsteps
    Set Browser Implicit Wait    5
    Maximize Browser Window 
    Sleep    5      
    Input Text    ${email_id}    ${email}    
    Input Password    ${password}    ${pass}    
    Sleep    5    
    Click Button    ${loginBtn}  
    Sleep    5               
    
Verificationsteps
    Title Should Be    Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers! 
    Sleep    5    
    
SearchProduct
    Input Text    ${search_field}    lenovo laptop
    Sleep    3    
    Press Keys    ${search_field}     ENTER  
    Sleep    3     
    
NavigatetoCart
    Click Element    ${cart_icon}  
    Sleep    3      
    
NavigatetoHome
    Click Element    ${home_icon} 
    Sleep    3       
        
Logout
    Mouse Over    ${myaccount}
    Sleep    3    
    Click Element    ${logout}
    Sleep    3    
    
Close
    Close All Browsers       
 