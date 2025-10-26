Time Series Forecasting
=======================

Notebook: `time_series.ipynb`
Dataset:
- `DailyDelhiClimateTrain.csv`

Description
-----------
This notebook demonstrates univariate and exogenous time series forecasting using PyCaret's `TSForecastingExperiment`. It includes:
- Reading and preparing the dataset (date parsing, frequency)
- Univariate model comparison and forecasting
- Optionally building calendar-based exogenous regressors and forecasting with exogenous variables

How to run
----------
1. Install packages appropriate for the PyCaret version used in the notebook.
   - If the notebook uses PyCaret 2 time series features, use Python 3.8 and `pycaret==2.3.5`.
   - For PyCaret 3 or latest, use Python 3.11+ and `pycaret`.
2. Ensure the `DATA_PATH` variable points to the CSV location accessible by the notebook kernel.
3. Restart kernel and run all cells.

Troubleshooting
---------------
- If you see a `ParserError` when reading the CSV, the file header may not match data rows; the notebook attempts to auto-detect columns but may require manual `names=` and `skiprows=` adjustments.
- If `FileNotFoundError` is raised, verify `DATA_PATH` and that the kernel has access to the file system path.
- If installing PyCaret and its dependencies fails on Windows due to compilation errors, install via conda (conda-forge) or use a Python 3.8 conda env.
