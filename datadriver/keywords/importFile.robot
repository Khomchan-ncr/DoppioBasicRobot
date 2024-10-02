*** Settings ***
Library    SeleniumLibrary
Library    String

Variables    ../resource/data/config.yaml
Variables    ../resource/setting/setting.yaml

Resource    ../keywords/locators/loginPage.robot
Resource    ../keywords/locators/mainPage.robot

