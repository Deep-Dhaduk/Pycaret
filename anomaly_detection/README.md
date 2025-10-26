Anomaly Detection
=================

Notebook: `Anomaly_detection.ipynb`
Datasets:
- `bank_transactions_data_2.csv`

Description
-----------
This notebook demonstrates unsupervised anomaly detection using PyCaret's anomaly detection module. Typical steps include:
- Load dataset and basic EDA
- Setup PyCaret anomaly experiment
- Create and compare anomaly models (e.g., Isolation Forest, LOF)
- Assign anomaly labels and inspect results

How to run
----------
1. Ensure the notebook kernel has `pandas`, `numpy`, and `pycaret` installed.
   - For PyCaret 2: use Python 3.8 and `pycaret==2.3.5` (conda recommended).
   - For PyCaret 3/time-series: use Python 3.11+ and `pycaret` appropriate version.
2. Open `Anomaly_detection.ipynb` in VS Code, select correct interpreter, restart kernel and run all cells.

Notes
-----
- If CSV path raises FileNotFoundError, update `DATA_PATH` in the notebook or copy the CSV into the notebook's working directory.
- If you get package build errors on Windows, prefer conda installation of dependencies.
