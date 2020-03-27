*** Settings ***

Library    AppiumLibrary        

*** Variables ***

#Login scree elements
${app_login}=         text=Login
${emailid_link}=  text=Use Email-ID
${email_id}=  class=android.view.View
${cont_btn}=  text=Continue
${password}=  class=android.view.View

#Menu elements
${menu_icon}=   text=menu
${life_insurance_lnk}=  text=Insurance NEW
${my_orders}=           text=My Orders
${scroll_down}=         window.scrollTo(0,1500)
${my_account}=          text=My Account

#Life Insurance elements
${insurance_plan}=  text=1 Lakh Life Insurance Cover
${declaration_1}=   text=High Cholesterol, High Blood Pressure
${declaration_2}=   text=Cancer
${declaration_3}=   text=Stroke or any other heart diseases
${declaration_4}=   text=Diabetes
${declaration_5}=   text=Any of the other diseases mentioned in the T&Cs. I also agree to all the
${close_tc}=        text=closeBlack-c9684eaa
${confirm_declaration}=  text=Confirm
${know_more}=            text=Know More
${hide_knowmore}=        class=android.view.View
${policyholder_name}=    xpath=//android.view.View[@text='Full Name*']
${policyholder_number}=  xpath=//android.view.View[@text='Mobile Number*']
${policyholder_email}=   xpath=//android.view.View[@text='Email Address*']
${back_navgation}=       text=back-e9e0ceba
${my_incurance_policy}=  text=Insurance

#Logout elements
${logout_from_all_devices}=  text=Logout of all devices
${confirm_logout}=           text=YES




