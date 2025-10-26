
# run.ps1 - One-click start (Windows)
Set-Location -Path $PSScriptRoot
if (!(Test-Path ".\.venv")) { python -m venv .venv }
. .\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
if (Test-Path ".\requirements.txt") { python -m pip install -r requirements.txt }
streamlit run apps/streamlit-chat/app.py
