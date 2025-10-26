# setup_pycaret38.ps1
# Usage: run this in PowerShell from the project root after you install Python 3.8
# It will create a venv named .venv_pycaret38 and install required packages from requirements-pycaret2.3.5.txt

try {
    & py -3.8 --version > $null 2>&1
    if ($LASTEXITCODE -ne 0) { throw }
} catch {
    Write-Host "Python 3.8 was not found via the py launcher. Please install Python 3.8 (https://www.python.org/downloads/release/python-388/) and re-run this script." -ForegroundColor Yellow
    exit 1
}

# Create venv
py -3.8 -m venv .venv_pycaret38

# Allow script activation for this session
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force

# Activate the venv
. .\.venv_pycaret38\Scripts\Activate.ps1

# Upgrade pip & build tools
python -m pip install --upgrade pip setuptools wheel

# Install requirements
pip install -r requirements-pycaret2.3.5.txt

# Run the association rule mining notebook (adjust notebook path if needed)
$jnb = "d:\\Pycaret(1)\\pycaret_assignment\\association_rule_mining\\association_rule_mining.ipynb"
Write-Host "Executing notebook: $jnb" -ForegroundColor Green
jupyter nbconvert --to notebook --execute $jnb --ExecutePreprocessor.timeout=1200

Write-Host "Done. If the notebook ran without errors, outputs are written back into the notebook file." -ForegroundColor Green
