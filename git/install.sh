#!/bin/bash

# Setup gitconfig
read -r -p "Setup git local configuration? [Y|n] " response
if [[ $response =~ (y|yes|Y) ]];then
  info 'Setup git config'

  info ' - What is your git author name?'
  read -e git_name

  info ' - What is your git email?'
  read -e git_email

  info ' - What is your github user name?'
  read -e github_user

  sed -e "s/GIT_NAME/$git_name/g" -e "s/GIT_EMAIL/$git_email/g" -e "s/GITHUB_USER/$github_user/g" git/.gitconfig_local.example > git/.gitconfig_local

  link "git/.gitconfig"
  link "git/.gitignore_local"
  link "git/.gitignore_global"

  success '.gitconfig'
fi
