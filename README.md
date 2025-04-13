# scaffold_vs_placeholder
![image](https://github.com/user-attachments/assets/52bfd250-da9e-4439-b44c-17c0b267d6b3)

# 📱 Perbandingan Flutter: Scaffold vs Placeholder

Proyek ini menunjukkan perbedaan mendasar antara **`Scaffold`** dan **`Placeholder`** di Flutter, lengkap dengan tampilan UI modern dan interaktif.

---

## 🏗️ Apa itu `Scaffold`?

Bayangkan kamu sedang membangun rumah.  
Nah, **`Scaffold`** itu seperti **kerangka utama rumah** di Flutter. Di dalamnya kamu bisa menaruh:

- `AppBar` (atap rumah)
- `Body` (isi rumah)
- `Drawer` (lemari/pintu samping)
- `FloatingActionButton` (tombol cepat)

`Scaffold` digunakan untuk membuat **struktur halaman yang lengkap dan siap pakai**.

---

## 🧱 Apa itu `Placeholder`?

Kalau `Scaffold` itu rumah beneran,  
maka **`Placeholder`** cuma **tanda** atau **"kotak dummy"** sementara.

Biasanya dipakai saat:
- Kamu masih mendesain layout
- Belum tahu widget apa yang akan ditaruh di situ
- Ingin lihat posisi atau ukuran dulu

`Placeholder` tampil sebagai **kotak silang abu-abu/merah** sebagai penanda.

---

## 🔍 Perbandingan Singkat

| Fitur                          | Scaffold                       | Placeholder                    |
|-------------------------------|--------------------------------|--------------------------------|
| Fungsi utama                  | Kerangka halaman lengkap       | Penanda posisi widget sementara |
| Digunakan untuk               | UI jadi / produksi             | Layout draft / development     |
| Memiliki AppBar, FAB, dll     | ✅ Ya                          | ❌ Tidak                       |
| Bisa langsung diisi konten    | ✅ Ya                          | ❌ Tidak                       |

---

## ✅ Kesimpulan Singkat

> **`Scaffold` = Rumah beneran yang siap dihuni**  
> **`Placeholder` = Kotak kosong yang nunjukin "nanti di sini ada sesuatu"**

---

## 📸 Tampilan Aplikasi

Aplikasi ini menunjukkan kedua widget secara berdampingan agar kamu bisa langsung lihat perbedaannya dengan jelas, lengkap dengan animasi dan UI modern berbasis Flutter Material 3.

---

## 🚀 Jalankan Proyek

```bash
flutter pub get
flutter run
