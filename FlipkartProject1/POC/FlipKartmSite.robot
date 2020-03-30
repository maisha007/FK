*** Settings ***

Library    AppiumLibrary        
Resource    ../Resources/mSite_Resources.resource    


*** Test Cases ***

Login
    Launch Device
    Browse URL
    Login
    
Open Menu
    Menu
    
Navigate to Life Insurance landing Screen
    Life Insurance   
    
Select Insurance Plan
    Select Insurance Plan
    
Declaration and T&C
    Declaration
    
Navigate to enter details
    Navigate to Enter Policy holder details
    
View selected Policy details
    View Policy Deatils
    
Hide Policy Deatils
    Hide Policy Details
    
Navigate back to Life Insurance landing Screen
    Back
    
Navigate back to Home screen
    Back to Home
    
Navigate to My Orders
    Menu
    My Orders
    
Navigate to My Insurance Policy
    My Insurance Policy
    
View Insurance order details
    Insurance Order Deatils
    
Navigate back to My InsurancePolicy
    Back
    
Navigate back to My Orders
    Back to Home
    
Navigate back to Home
    Back
    
Navigate to My Accounts
    Menu
    My Account
    
Logout
    Logout
    Close All Application