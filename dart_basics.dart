// Student: Mohammed abdelmoniem hassan adam
// Reg no: 25908
const String regNo = '25908';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void main() { 
  // By Mohammed
  /*
  print('Reg no: $regNo | D = $d | T = $t');
   // Part A: Variables and operators  (A1)
   
int a = 17;
int b = 5;
print(a / b);
print(a ~/ b);
print(a % b);
print(-a % b);
print(-a ~/ b);
print(-17.abs());
print(0.1 + 0.2 == 0.3);
print(10 == 10.0);



 // Part A: Variables and operators  (A2)
int x = 9; // your D
int y = 08; // your T
var z = x * 2 + y ~/ 4;
z += x;
print(z);
print(z.isEven);
print('$z' + '$x');



//part B: B1
String city = 'Kigali';
print(city.length);
print(city[city.length - 1]);
print(city.substring(2, 4));
print(city.toUpperCase().indexOf('A'));
print(city.contains('k'));
print('$city.length');
print('${city.length}');
print(city * 2);
city.toUpperCase();
print(city);
print(city.replaceAll('i', '!'));
print('5' + 5.toString());
print(int.parse('5') + 5);



//Part C: Control flow
for (int i = 0; i < 6; i++) {
if (i == 2) continue;
if (i == 4) break;
print(i);
}

//Part C: Control flow (c2)
int day = 2;
switch (day) {
case 1:
case 2:
print('Early week');
case 3:
print('Midweek');
default:
print('Weekend soon');
}

//Part C: Control flow (c3)
int? bonus;
print(bonus ?? 50);
bonus ??= 70;
bonus ??= 90;
print(bonus);
int n = 10;
do {
print(n);
n += 3;
} while (n < 10);


//Part C: Control flow (c4)
int x = 9; // your D
String result = '';
while (x > 0) {
if (x % 2 == 0) {
result += 'E';
} else {
result += 'O';
}
x -= 3;
}
print(result);
print(result.length);
print(result.isEmpty ? 'nothing' : result[0]);

//Part C: Control flow (c5)
void drawTriangle(int height) {
  int row = 1;
  while (row <= height) {
    String ch = row % 2 == 1 ? '*' : '#';   // odd rows *, even rows #
    print(' ' * (height - row) + ch * row); // spaces, then the symbols
    row++;
  }
}

//Part D: Functions 
//(D1)
int count = 1;
void bump() {
  int count = 10;
  count++;
}
void doubleIt(int value) {
  value = value * 2;
}
int addVat(int price, {int rate = 18}) => price + price * rate ~/ 100;
void main() {
  bump();
  print(count);
  int v = 5;
  doubleIt(v);
  print(v);
  print(addVat(1000));
  print(addVat(999));
  print(addVat(1000, rate: 0));

}

//Part D: Functions 
//(D2)
int momoFee(int amount) {
  if (amount <= 0) return -1;        // invalid
  if (amount <= 1000) return 20;     // 1 to 1,000
  if (amount <= 10000) return 100;   // 1,001 to 10,000
  if (amount <= 150000) return 250;  // 10,001 to 150,000
  return 1500;                       // above 150,000
}

String maskPhone(String phone) {
  if (phone.length != 10) return 'INVALID';
  // first 3 characters + 5 stars + last 2 characters
  return phone.substring(0, 3) + '*' * 5 + phone.substring(8);
}

void main() {
  int D = 7; // your D
  int T = 30; // your T
  const String phone = '0788123456';

  int i = 1;
  int total = 0;
  while (i <= D + 3) {
    int amount = i * 4000 + T * 100;
    int fee = momoFee(amount);
    total += fee;
    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone(phone)}');
    i++;
  }
  print('Total fees: $total RWF');
}
*/


}










