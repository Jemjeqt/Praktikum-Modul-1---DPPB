// void main() {
//   for (int i = 18; i <= 27; i++) {
//     print('Sekarang Tanggal $i');
//   }
// }

// int go(int n) {
//   int s = 0; // selisih max
//   int f = 1; // angka sebelumnya
//   for (int i = 2; i <= n; i++) {
//     // loop
//     if (n % i == 0) {
//       // apakah n habis dibagi dengan 2
//       if (i - f > s) {
//         // jika selisihnya lebih besar dari s
//         s = i - f; // s diisi dengan nilai selisih
//       }
//       f = i;
//     }
//   }
//   return s;
// }

// void main() {
//   print(go(30));
// }

// int panas(int x) {
//   if (x == 0) return 0;
//   return (x % 10) + panas(x ~/ 10);
// }

// int dingin(int x, int y) {
//   int air = 0;
//   while (panas(air) != x) {
//     air += y;
//   }
//   return air;
// }

// void main() {
//   print(dingin(10, 7));
//   print(dingin(2, 35));
// }

// import 'dart:io';

// void main() {
//   print("Masukkan basis B:");
//   int B = int.parse(stdin.readLineSync()!);

//   print("Masukkan string Y:");
//   String Y = stdin.readLineSync()!;

//   print("hasilnya adalah :");
//   print(solve(B, Y));
// }

// int solve(int B, String Y) {
//   if (Y == "0") return 1;

//   int n = Y.length;
//   List<List<int>> dp = List.generate(n + 1, (_) => List.filled(2, 0));
//   dp[0][0] = 1;

//   for (int i = 0; i < n; i++) {
//     for (int started = 0; started < 2; started++) {
//       if (dp[i][started] == 0) continue;

//       for (int len = 1; len <= 6 && i + len <= n; len++) {
//         int digit = int.parse(Y.substring(i, i + len));
//         bool valid = false;

//         if (len == 1) {
//           valid = digit < B;
//         } else {
//           int min = 1;
//           for (int j = 1; j < len; j++) min *= 10;
//           valid = digit >= min && digit < B;
//         }

//         if (valid) {
//           int newStarted = (digit > 0) ? 1 : started;
//           dp[i + len][newStarted] =
//               (dp[i + len][newStarted] + dp[i][started]) % 1000000007;
//         }
//       }
//     }
//   }

//   return dp[n][1];
// }
