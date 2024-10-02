*** Settings ***
Library    AppiumLibrary
Library    Process

Variables    ../resource/data/config.yaml
Variables    ../resource/data/${platform}Data.yaml
Variables    ../resource/setting/setting.yaml

Resource    ../keywords/features/cartpage.robot
Resource    ../keywords/features/mainpage.robot
Resource    ../keywords/features/productpage.robot

Resource    ../keywords/locators/${platform}/cartpage.robot
Resource    ../keywords/locators/${platform}/mainpage.robot
Resource    ../keywords/locators/${platform}/productpage.robot

Resource    ../keywords/commonKeyword.robot

