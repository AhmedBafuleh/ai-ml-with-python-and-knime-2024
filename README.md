# S&P 500 Price Prediction Using LSTM and Random Forest

## Overview
This project builds a machine learning model to predict S&P 500 price movements using **Long Short-Term Memory (LSTM)** networks and **Random Forest**. The model is trained using historical stock data and evaluates its predictions against actual closing prices.

## Features
- **Data Preprocessing:** Handles missing data, normalizes values, and computes technical indicators.
- **Technical Indicators:** Includes SMA, EMA, MACD, RSI, and Bollinger Bands.
- **LSTM Model:** Uses deep learning for time-series forecasting.
- **Random Forest Model:** Traditional machine learning model for feature-based predictions.
- **Model Comparison:** Evaluates LSTM and Random Forest predictions against actual prices.
- **Visualization:** Compares predicted vs actual prices in a graph.

## Installation
### Prerequisites
Ensure you have **Python 3.10+** installed along with the following libraries:
```bash
pip install numpy pandas matplotlib scikit-learn tensorflow xgboost
```

## Usage
1. Clone the repository:
```bash
git clone https://github.com/yourusername/sp500-prediction.git
cd sp500-prediction
```
2. Run the model:
```bash
python train_model.py
```
3. The predictions will be displayed in a **graph** comparing actual vs. predicted prices.

## Dataset
- The dataset used is `sp500.csv`, containing historical **Open, High, Low, Close, Volume** data.
- The script automatically preprocesses and splits data into **training (before 2024) and testing (2024-2025).**

## Model Details
### LSTM Model
- **Input:** Past 60 days of price data.
- **Architecture:** Two LSTM layers with dropout regularization.
- **Output:** Binary classification (Price Up or Down).

### Random Forest Model
- **Input:** Feature-engineered dataset with technical indicators.
- **Parameters:** 300 estimators, min_samples_split=20, max_depth=10.
- **Output:** Binary classification (Price Up or Down).

## Expected Results
- Precision score is calculated to evaluate model accuracy.
- Graphs display actual vs. predicted closing prices.

## Contributing
Pull requests are welcome! Please open an issue first to discuss changes.

## License
MIT License. See `LICENSE` for details.

## Author
[Your Name] - [Your Contact Info]

