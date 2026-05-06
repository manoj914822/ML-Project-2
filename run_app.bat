@echo off
setlocal

REM Ensure script runs from its own directory
cd /d "%~dp0"

REM Activate the local venv inside this project directory (ml project 1/venv)
call .\\venv\\Scripts\\activate.bat

cd /d "Customer-Survival-Analysis-and-Churn-Prediction"
python app_fixed.py
pause
