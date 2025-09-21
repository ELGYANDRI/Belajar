// Judul: Aplikasi Penghitung Gaji Karyawan Sederhana
// File: tugas.dart

void main() {
  // Data karyawan
  String namaKaryawan = "Elgyandri Kadondi.T";
  int jamKerja = 40; // contoh: 40 jam kerja per minggu
  double upahPerJam = 50000; // contoh: Rp 50.000 per jam
  bool statusTetap = true; // true = tetap, false = kontrak

  // Menghitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // Menghitung pajak berdasarkan status karyawan
  double pajak = statusTetap ? gajiKotor * 0.10 : gajiKotor * 0.05;

  // Menghitung gaji bersih
  double gajiBersih = gajiKotor - pajak;

  // Menampilkan hasil perhitungan
  print("=== Aplikasi Penghitung Gaji Karyawan Sederhana ===");
  print("Nama Karyawan   : $namaKaryawan");
  print("Gaji Kotor      : Rp ${gajiKotor.toStringAsFixed(0)}");
  print("Pajak           : Rp ${pajak.toStringAsFixed(0)}");
  print("Gaji Bersih     : Rp ${gajiBersih.toStringAsFixed(0)}");
}
