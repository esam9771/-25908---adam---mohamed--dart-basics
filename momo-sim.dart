// Student: Mohammed abdelmoniem hassan adam
// Reg no: 25908
// Part F: MoMo USSD Simulator

const int regNo = 25908;
const int d = 8;
const int t = 8;

// Part D2: momoFee
int momoFee(int amount) {
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

// Part F - Q1: formatRwf (8 marks)
String formatRwf(int amount) {
  bool negative = amount < 0;

  String number = amount.abs().toString();
  String result = '';

  int i = number.length - 1;
  int count = 0;

  while (i >= 0) {
    result = number[i] + result;
    count++;

    if (count % 3 == 0 && i != 0) {
      result = ',' + result;
    }

    i--;
  }

  if (negative) {
    result = '-' + result;
  }

  return '$result RWF';
}

// Part F - Q2: isValidPin (6 marks)
bool isValidPin(String pin) {
  if (pin.length != 5) {
    return false;
  }

  int i = 0;

  while (i < pin.length) {
    if (pin.codeUnitAt(i) < 48 || pin.codeUnitAt(i) > 57) {
      return false;
    }

    i++;
  }

  if (pin == '12345') {
    return false;
  }

  bool allSame = true;
  i = 1;

  while (i < pin.length) {
    if (pin[i] != pin[0]) {
      allSame = false;
      break;
    }

    i++;
  }

  if (allSame) {
    return false;
  }

  return true;
}

// Part F - Q3: sendMoney (6 marks)
int sendMoney(int balance, int amount) {
  int fee = momoFee(amount);

  if (fee == -1) {
    print('Failed: invalid amount');
    return balance;
  }

  if (amount + fee > balance) {
    print('Failed: insufficient balance');
    return balance;
  }

  balance = balance - amount - fee;

  print(
    'Sent ${formatRwf(amount)} '
    '(fee ${formatRwf(fee)}). '
    'New balance: ${formatRwf(balance)}'
  );

  return balance;
}

// Part F - Q4: buyAirtime (4 marks)
int buyAirtime(int balance, int amount) {
  if (amount < 100 || amount > 50000 || amount > balance) {
    print('Failed: invalid airtime amount');
    return balance;
  }

  balance = balance - amount;

  print('Airtime purchased: ${formatRwf(amount)}');

  return balance;
}

// Part F - Q5: main (6 marks)
void main() {
  print('MoMo USSD Simulator');
  print('Reg No: $regNo | D = $d | T = $t');

  // 1. Test isValidPin
  print(isValidPin('12345')); // false
  print(isValidPin('77777')); // false
  print(isValidPin('4821'));  // false
  print(isValidPin('48a21')); // false
  print(isValidPin('48218')); // true

  // 2. Starting balance
  int balance = 20000 + d * 500;

  print('Starting balance: ${formatRwf(balance)}');

  // 3. Send money three times
  int i = 0;

  while (i < 3) {
    balance = sendMoney(balance, (d + 1) * 3000);
    i++;
  }

  // Buy 1,000 RWF airtime
  balance = buyAirtime(balance, 1000);

  // Send 0 RWF
  balance = sendMoney(balance, 0);

  // Send 200,000 RWF
  balance = sendMoney(balance, 200000);

  // 4. Final balance
  print('Final balance: ${formatRwf(balance)}');

  // 5. Additional formatRwf tests
  print(formatRwf(0));       // Expected: 0 RWF
  print(formatRwf(999));     // Expected: 999 RWF
  print(formatRwf(1000));    // Expected: 1,000 RWF
  print(formatRwf(1250000)); // Expected: 1,250,000 RWF
  print(formatRwf(-5000));   // Expected: -5,000 RWF

  // Additional isValidPin tests
  print(isValidPin('98765')); // Expected: true
  print(isValidPin('11111')); // Expected: false
  print(isValidPin('12345')); // Expected: false
  print(isValidPin('12a45')); // Expected: false
  print(isValidPin('54321')); // Expected: true
}