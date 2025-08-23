*** Settings ***
Library        AppiumLibrary
Library        String
Library        DateTime

Resource       ./Keywords/common_mobile.robot
Resource       ./Keywords/pages/home_page.robot
Resource       ./Keywords/pages/new_todo_page.robot
Resource       ./Keywords/features/home_feature.robot
Resource       ./Keywords/features/new_todo_page_feature.robot
Resource       ./Locators/home_page_locator.robot
Resource       ./Locators/new_todo_page_locator.robot


Variables      ./Settings/${platform}/setting.yaml
Variables      ./Translations/${lang}.yaml
Variables      ./Variables/common.yaml
Variables      ./Variables/data.yaml