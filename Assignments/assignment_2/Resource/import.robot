*** Settings ***
Library         SeleniumLibrary
Variables       ./Translations/${lang}.yaml
Variables       ./Variables/user_data.yaml
Variables       ./Variables/common.yaml
Resource        ./Keywords/common.robot
Resource        ./Keywords/pages/login_page.robot
Resource        ./Keywords/features/login_feature.robot
Resource        ./Locators/web_locator.robot
