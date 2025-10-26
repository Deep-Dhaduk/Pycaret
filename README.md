PyCaret Assignment
===================

Overview
--------
This repository contains a set of Jupyter notebooks demonstrating common machine learning tasks using PyCaret: anomaly detection, association rule mining, clustering, multiclass classification, regression, and time series forecasting. Each folder includes a dataset (when available), a notebook with an end-to-end workflow, and a short README describing that task.

Folder structure
----------------
- anomaly_detection/ — unsupervised anomaly detection using PyCaret
- association_rule_mining/ — Apriori-style association rule mining
- clustering/ — clustering and segmentation examples
- multiclass/ — multiclass classification with PyCaret
- regression/ — regression workflows with PyCaret
- time_series/ — time series forecasting with PyCaret

Quick start
-----------
Recommended environments:
- For PyCaret 2 (v2.3.5) notebooks: Python 3.8 (conda strongly recommended on Windows)
- For newer PyCaret versions (3.x), use Python 3.11+ and follow the notebook-specific instructions.

Options:
1) Use the provided PowerShell script to create a Python 3.8 venv and install PyCaret 2.3.5 (Windows):
   - `.
equirements-pycaret2.3.5.txt` lists packages used for PyCaret 2.
   - `.
un
tf` (see `setup_pycaret38.ps1` in the repo) — run `.\setup_pycaret38.ps1` from the project root after installing Python 3.8.

2) Use conda (recommended for Windows):
   - Install Miniconda/Anaconda, then create environment:
     conda create -n pycaret38 python=3.8 -c conda-forge -y
     conda activate pycaret38
     pip install pycaret==2.3.5

3) Use your system Python 3.11 kernel for notebooks that specify PyCaret 3/time-series. Install packages with:
   %pip install pycaret

How to run a notebook
---------------------
- In VS Code open the notebook, choose the intended Python kernel (bottom right), restart kernel, then Run All.
- To run headless (execute and save outputs):
  jupyter nbconvert --to notebook --execute path/to/notebook.ipynb --ExecutePreprocessor.timeout=600

Notes & troubleshooting
-----------------------
- PyCaret 2.3.5 has compiled dependencies (lightgbm, numba, etc.); on Windows conda is more reliable.
- If you see compilation errors while pip-installing pandas or other packages, switch to conda or use prebuilt wheels.
- If datasets fail to load due to path issues, ensure the notebook kernel has access to the file system path used in `DATA_PATH`.

Contact
-------
If you need help running the notebooks or resolving package errors, open an issue or reply to me with the error output and I can help fix it.
