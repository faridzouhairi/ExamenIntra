*** Settings ***
Library           SeleniumLibrary
Library           DateTime
Variables         ../Ressources/Locators.py

*** Variables ***
${TIMEOUT}        10s
${vURL}    https://www.ebay.com/
${vBrowser}    chrome
${vTextRecherche}    
${IndexFrame}    1
*** Keywords ***
Capture du nombre de résultats de recherche
    ${xpath}    Set Variable    //h1[contains(text(), "result")]/span
    ${resultats_text}    Get Text    xpath=${xpath}
    ${resultats}    Set Variable    ${resultats_text.split(' ')[0]}
    [Return]    ${resultats}
Rechercher un element dans Ebay
    [Arguments]    ${vTextRecherche}
    Given Open Browser  ${vURL}  ${vBrowser} 
    When Input Text    ${Inp_BarreRecherche}    ${vTextRecherche}  
    When Press Keys    ${Inp_BarreRecherche}    ENTER