*** Settings ***
Library    SeleniumLibrary
Library    String

Variables    ../resource/data/config.yaml
Variables    ../resource/data/${env}Data.yaml
Variables    ../resource/setting/setting.yaml

Resource    ../keywords/locators/loginPage.robot
Resource    ../keywords/locators/mainPage.robot
Resource    ../keywords/locators/manageUserPage.robot
Resource    ../keywords/locators/marketPage.robot
Resource    ../keywords/locators/paymentPage.robot
Resource    ../keywords/locators/signUpPage.robot

Resource    ../keywords/features/loginPage.robot
Resource    ../keywords/features/mainPage.robot
Resource    ../keywords/features/manageUserPage.robot
Resource    ../keywords/features/marketPage.robot
Resource    ../keywords/features/paymentPage.robot
Resource    ../keywords/features/signUpPage.robot

Resource    ../keywords/commonKeyword.robot
