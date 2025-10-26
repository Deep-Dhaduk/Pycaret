Multiclass Classification
=========================

Notebook: `multiclass.ipynb`
Datasets:
- `Mobile_price_data.csv`

Description
-----------
This notebook demonstrates multiclass classification using PyCaret's classification module. Steps include:
- Loading and exploring the data
- Setting up a PyCaret classification experiment
- Comparing models and selecting the best one
- Saving and using the model for predictions

How to run
----------
1. Use a Python environment with `pycaret`, `pandas`, `numpy` installed.
   - For PyCaret 2: prefer Python 3.8 + `pycaret==2.3.5`.
2. Open `multiclass.ipynb` and run cells from top to bottom.

Notes
-----
- Ensure the `target` column in the setup call matches the dataset (e.g., `price_range` or `GradeClass`).
- Running `compare_models()` may take time; you can pass specific models to `create_model()` to speed up experimentation.
