import 'dart:io';

void main() {
  // Pesan sambutan
  print("====================================");
  print("  SELAMAT DATANG DI RESTORAN ELJI   ");
  print("====================================");

  // Daftar menu makanan & minuman
  Map<String, int> makanan = {
    'Nasi Goreng': 20000,
    'Mie Ayam': 15000,
    'Sate Ayam': 25000,
    'Ayam Bakar': 30000,
    'Ikan Bakar': 35000,
  };

  Map<String, int> minuman = {
    'Teh Manis': 5000,
    'Kopi': 8000,
    'Jus Jeruk': 10000,
    'Es Teh Lemon': 7000,
    'Air Mineral': 4000,
  };

  bool lanjut = true;

  while (lanjut) {
    // Reset keranjang & total setiap kali pemesanan baru
    List<String> keranjang = [];
    int totalHarga = 0;

    print("\n=== MENU MAKANAN ===");
    int no = 1;
    makanan.forEach((nama, harga) {
      print("$no. $nama - Rp$harga");
      no++;
    });

    // Input pilihan makanan
    stdout.write("\nPilih makanan (pisahkan dengan spasi, contoh: 1 3): ");
    String? inputMakanan = stdin.readLineSync();

    if (inputMakanan != null && inputMakanan.isNotEmpty) {
      List<String> pilihanMakanan = inputMakanan.split(' ');
      for (var p in pilihanMakanan) {
        int? pilihan = int.tryParse(p);
        if (pilihan != null && pilihan >= 1 && pilihan <= makanan.length) {
          String menu = makanan.keys.elementAt(pilihan - 1);
          keranjang.add(menu);
        } else {
          print("Pilihan makanan '$p' tidak valid!");
        }
      }
      if (keranjang.isNotEmpty) {
        print("Pesanan makanan berhasil ditambahkan");
      }
    }

    print("\n=== MENU MINUMAN ===");
    no = 1;
    minuman.forEach((nama, harga) {
      print("$no. $nama - Rp$harga");
      no++;
    });

    // Input pilihan minuman
    stdout.write("\nPilih minuman (pisahkan dengan spasi, contoh: 1 2): ");
    String? inputMinuman = stdin.readLineSync();

    if (inputMinuman != null && inputMinuman.isNotEmpty) {
      List<String> pilihanMinuman = inputMinuman.split(' ');
      for (var p in pilihanMinuman) {
        int? pilihan = int.tryParse(p);
        if (pilihan != null && pilihan >= 1 && pilihan <= minuman.length) {
          String menu = minuman.keys.elementAt(pilihan - 1);
          keranjang.add(menu);
        } else {
          print("Pilihan minuman '$p' tidak valid!");
        }
      }
      if (keranjang.isNotEmpty) {
        print("Pesanan minuman berhasil ditambahkan");
      }
    }

    // Kalkulasi total untuk pesanan ini
    for (var item in keranjang) {
      if (makanan.containsKey(item)) {
        totalHarga += makanan[item]!;
      } else if (minuman.containsKey(item)) {
        totalHarga += minuman[item]!;
      }
    }

    // Tampilkan struk
    print("\n===================================");
    print("            STRUK PEMBAYARAN        ");
    print("====================================");
    keranjang.forEach((item) => print("- $item"));
    print("------------------------------------");
    print("TOTAL BAYAR: Rp$totalHarga");
    print("====================================");

    // Tanya apakah mau lanjut
    stdout.write("\nApakah anda ingin lanjut memesan? (y/n): ");
    String? lanjutInput = stdin.readLineSync();
    if (lanjutInput == null || lanjutInput.toLowerCase() != 'y') {
      lanjut = false;
      print("\n=================================================");
      print(" TERIMAKASI TELAH BERBELANJA DI RESTORAN ELJI ");
      print(" SILAHKAN DATANG KEMBALI DI LAIN WAKTU :) ");
      print("===================================================");
    }
  }
}
