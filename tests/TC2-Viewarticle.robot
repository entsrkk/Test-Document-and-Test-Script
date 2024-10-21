*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Settings ***
Resource    ../resources/variables.robot
Resource    ../resources/keywords.robot

*** Variables ***
${URL_POST}    https://techvibe.app/044-Arpapat-Yipram/The-Role-and-Workflow-of-a-Business-Analyst-647abeb1
${BLOG_TITLE2}    The Role and Workflow of a Business Analyst

*** Test Cases ***
TC2001 Viewsrticle
    [Documentation]    View article on profile page 
    Open WebSite
    Login to Blog Site
    Go To Proflie
    Go To Blog Post
    Check Title blog

*** Keywords ***
Check Title blog  
    Page Should Contain    ${BLOG_TITLE2}
    Sleep    1
    Capture Page Screenshot 



