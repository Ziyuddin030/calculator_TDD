# String Calculator TDD Kata (Ruby)

This project implements the classic **String Calculator Kata** using **Test-Driven Development (TDD)** in Ruby.
---

## 📌 Requirements Covered

- [x] Empty string returns `0`
- [x] Single number returns itself
- [x] Sum of two numbers
- [x] Sum of any amount of numbers
- [x] Handle new lines between numbers (`"1\n2,3" → 6`)
- [x] Support custom delimiters (e.g. `"//;\n1;2" → 3`)
- [x] Support multi-character delimiters (e.g. `"//***\n1***2***3" → 6`)
- [x] Throw exception for negative numbers (`"1,-2,3" → "negative numbers not allowed: -2"`)
- [x] Show all negatives in exception (`"3,-4,5,-6" → "negative numbers not allowed: -4, -6"`)

---

## ⚙️ Setup

Clone the repo and install dependencies:

```bash
git clone https://github.com/Ziyuddin030/calculator_TDD.git
cd string_calculator

bundle install
```

## Command For Test Case

	- bundle exec rspec
	- bundle exec rubocop -A
