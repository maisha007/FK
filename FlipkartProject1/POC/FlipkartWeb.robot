*** Settings ***

Library    Selenium2Library        
Resource    ../Resources/Web_Resources.resource



*** Test Cases ***

LaunchWebsiite
    LaunchWebsite
    
Login
    Loginsteps
    
VerifyPageTitle
    Verificationsteps
    
ProductSearch
    SearchProduct
    
NavigatetoCart
    NavigatetoCart
    
NavigatetoHome
    NavigatetoHome
    
Logout
    Logout
    
Close
    Close
 



    
    
   