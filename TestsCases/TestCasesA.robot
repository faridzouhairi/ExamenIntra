*** Settings ***
Documentation     Fichiers de scripts pour le module RQ3 : Sites.
Library           SeleniumLibrary
Resource          ../Ressources/Keywords.robot       
Test Teardown    Close All Browsers
*** Variables ***
${vURL}           https://www.ebay.com/
${vBrowser}       chrome
*** Test Cases ***
Scénario A : lien de recherche avancée
    Given Open Browser  ${vURL}  ${vBrowser} 
    When Click Element     ${Btn_AdvancedSearch}   
    Then Page Should Contain    Advanced search
Scénario B: nombre d’éléments de recherche
    Rechercher un element dans Ebay    iphone11   
    #When Wait Until Page Contains    ${Resultats_text}
    ${resultats}    Capture du nombre de résultats de recherche
    Log to Console    Le nombre de résultats de recherche est : ${resultats}
    #Log to Console    Le nombre de résultats de recherche est : ${resultats}
Scénario C: nombre d’éléments recherchés2
    Rechercher un element dans Ebay    Toy cars
    ${resultats}    Capture du nombre de résultats de recherche
    Log to Console    Le nombre de résultats de recherche est : ${resultats}
 

    