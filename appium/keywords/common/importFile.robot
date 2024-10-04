*** Settings ***
Library    AppiumLibrary
Library    Process

Variables    ../../resource/data/config.yaml
Variables    ../../resource/data/${platform}Data.yaml
Variables    ../../resource/setting/setting.yaml

Resource    ../../keywords/features/cartFeature.robot
Resource    ../../keywords/features/mainFeature.robot
Resource    ../../keywords/features/productFeature.robot

Resource    ../../keywords/locators/${platform}/cartpage.robot
Resource    ../../keywords/locators/${platform}/mainpage.robot
Resource    ../../keywords/locators/${platform}/productpage.robot

Resource    ../../keywords/pages/cartPage.robot
Resource    ../../keywords/pages/mainPage.robot
Resource    ../../keywords/pages/productPage.robot

Resource    ../../keywords/common/commonKeyword.robot

