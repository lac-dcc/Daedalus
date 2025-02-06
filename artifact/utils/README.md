# Utilitary Scripts

The scripts contained in this folder helps doing diverse tasks such plotting graphs given a report file.

## Dependencies

- Python 3.8+
- venv
- Required Python libraries (see `requirements.txt`).

1. Create a virtual environment:
```bash
python3 -m venv venv
```
2. Activate the virtual environment:
  - On Windows:
```plaintext
venv\Scripts\activate
```
  - On macOS/Linux:
```bash
source venv/bin/activate
```
3. Install the dependencies:
```bash
pip install -r requirements.txt
```

## Run

**Note**: activate the venv before running any script from this folder.

1. Create a jupyter notebook from the provided source:
```bash
jupytext --to ipynb slices-analysis.py
```

2. Start JupyterLab and run `slices-analysis.ipynb` notebook:
```bash
jupyter lab
```
