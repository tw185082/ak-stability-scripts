@echo off
:: AK root path
set AkRoot=C:\Users\tw185082\Documents\Github\aloha-kitchen

:: Folder to fetch git history for
set DllFolder=Source\Aloha.Kitchen.Business
::set DllFolder=Source\AlohaKitchen
::set DllFolder=Source\AlohaPOSKitchenInterface
::set DllFolder=Source\Aloha.Kitchen.DirectoryService

set CurrentPath=%cd%
set Filename=all_commits.txt

:: Commit log start date
set since="Feb 21 2019"

:: Commit log end date
set until="Apr 21 2020"

cd %AkRoot%
git log --since %since% --until %until% -- %AkRoot%\%DllFolder% > %CurrentPath%\%Filename%
python %CurrentPath%\TextFilterFromFile.py %CurrentPath%