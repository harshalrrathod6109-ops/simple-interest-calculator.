# Simple Interest Calculator

A simple Python program that calculates simple interest from a principal amount, an annual interest rate, and a time period.

## Formula

```
Simple Interest = (P × R × T) / 100
```

- **P**: Principal amount
- **R**: Annual rate of interest (in %)
- **T**: Time period (in years)

## Features

- Takes principal, rate, and time as input
- Calculates simple interest and the total amount
- Validates that inputs are not negative

## Usage

1. Make sure Python 3 is installed.
2. Run the program:

   ```
   python simple_interest.py
   ```

3. Enter the requested values when prompted.

## Example

```
Enter principal amount: 10000
Enter annual interest rate (%): 5
Enter time period (years): 2

Simple Interest: 1000.0
Total Amount: 11000.0
```

## Code

```python
def simple_interest(principal, rate, time):
    return (principal * rate * time) / 100

p = float(input("Enter principal amount: "))
r = float(input("Enter annual interest rate (%): "))
t = float(input("Enter time period (years): "))

if p < 0 or r < 0 or t < 0:
    print("Values cannot be negative.")
else:
    si = simple_interest(p, r, t)
    print("Simple Interest:", si)
    print("Total Amount:", p + si)
```

## License

This project is open source and available under the MIT License.# simple-interest-calculator.
