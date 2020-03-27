*** Settings ***

Library    Selenium2Library    

*** Variables ***

#Login page elements
${email_id}=     xpath://input[@class='_2zrpKA _1dBPDZ']
${password}=  xpath://input[@class='_2zrpKA _3v41xv _1dBPDZ']
${loginBtn}=  xpath://button[@class='_2AkmmA _1LctnI _7UHT_c']

#Search product elements
${search_field}=  name:q

#Cart page elements
${cart_icon}=  xpath://span[contains(text(),'Cart')]

#Home icon page element
${home_icon}=  xpath://img[@class='_1e_EAo']

#MyAccount page elements
${myaccount}=  xpath://div[@class='_2aUbKa']
${logout}=     xpath://div[contains(text(),'Logout')]



