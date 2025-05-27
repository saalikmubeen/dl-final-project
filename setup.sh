#!/bin/bash

echo "[*] Creating virtual environment..."
python3 -m venv .venv

echo "[*] Activating virtual environment..."
source .venv/bin/activate

echo "[*] Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt


echo "[*] Adding virtual environment to Jupyter kernels..."
python -m ipykernel install --user --name=dl-final-project --display-name "DL-FINAL-PROJECT (venv)"

echo ""
echo "=============================== ************ ====================================="
echo ""
echo "[*] Setup complete!"
echo ""
echo "👉 To activate the virtual environment later, run:"
echo "source .venv/bin/activate"

