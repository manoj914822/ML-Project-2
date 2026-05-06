#!/usr/bin/env python
"""
Wrapper to start the Flask app with proper environment variables for memory-constrained systems.
"""
import os
import sys

# Set threading limits BEFORE any numeric libraries are imported
os.environ['OPENBLAS_NUM_THREADS'] = '1'
os.environ['OMP_NUM_THREADS'] = '1'
os.environ['MKL_NUM_THREADS'] = '1'
os.environ['NUMEXPR_NUM_THREADS'] = '1'
os.environ['NUMBA_NUM_THREADS'] = '1'

# Import and run app
sys.path.insert(0, 'Customer-Survival-Analysis-and-Churn-Prediction')
from app_fixed import app

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
