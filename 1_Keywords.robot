*** Settings ***
Documentation                       Homepage related keyword
Variables                           2_Locators.yaml

*** Variables ***
${url}                              http://automationpractice.com
${browser_type}                     Chrome

*** Keywords ***
Open Browser Chrome             
    Open Browser                    ${url}                      ${browser_type}

1a. Verify That Current Url Is Homepage Url
    Location Should Be              ${homepage_url}

1b. Verify That Homepage Header Appears
    Element Should Be Visible       ${header_image}

2a. Click Button Sign In
    Click Element                   ${sign_in_button}

2b. Verify That Create Account Button Appears
    Element Should Be Visible       ${create_account_button}

2c. Create An Account Using Email Address
    Input Text                      ${click_email}              ${email}

2d. Click Button Create An Account
    Click Element                   ${create_account_button}

2e. Complete Registration With Filling Personal Data
    Element Should Not Be Visible   ${existing_account}

3a. Enter Email Address
    Input Text                      ${enter_email}              ${email}

3b. Enter Password
    Input Text                      ${enter_password}           ${password}

3c. Account Sign In
    Click Element                   ${click_sign_in}

4a. Click Product Type
    Click Element                   ${select_product}
    Mouse Over                      ${select_item}

4b. Click Add To Chart
    Click Element                   ${add_to_chart}
    Wait Until Element Is Visible   //*[@title="Proceed to checkout"]

4c. Proceed Checkout
    Click Element                   ${checkout} 
    Click Element                   ${checkout2} 
    Click Element                   ${checkout3} 
    Checkbox Should Be Selected     ${checkout4}
    Sleep                           10s  

#4d. Proceed Order Payment
    #Click Element                   ${payment}
    #Click Element                   ${payment2}

5a. Click My Account Name
    Click Element                   ${click_account}

5b. Click User Details
    Click Element                   ${click_userdetails}

6a. Click Contact Us               
    Click Element                   ${click_contactus}

6b. Verify If User Can See Send A Message Button
    Element Should Be Visible       ${message_button}   

6c. Send a message
    Select From List By Value       ${id_contact}                   1
    Input Text                      ${id_email}                     ${email}
    Input Text                      ${id_order}                     123abc
    Input Text                      ${message}                      Coba kirim email
    Click Element                   ${message_button}
