# Maulana E-Surat Desa

Aplikasi web untuk mengelola surat-surat desa dengan mudah menggunakan Laravel dan teknologi modern.

## Tentang Aplikasi

Maulana E-Surat Desa adalah sistem informasi yang dirancang untuk membantu manajemen surat-surat di level desa. Aplikasi ini menyediakan fitur lengkap untuk pengelolaan surat masuk, surat keluar, data penduduk, dan kategori surat.

## Fitur Utama

- 📝 Manajemen Surat (Masuk/Keluar)
- 👥 Data Penduduk Desa
- 📂 Kategori Surat
- 👨‍💼 Manajemen Peran Pengguna (Admin, Kades, Manager)
- 📊 Dashboard dan Laporan
- 🔐 Sistem Autentikasi dan Otorisasi
- 📤 Export Data (Excel, PDF)
- 📥 Import Data Penduduk

## Screenshots

### Dashboard
![Dashboard](./assets/Screenshot%202025-11-27%20at%2017.41.57.png)

### Manajemen Surat
![Manajemen Surat](./assets/Screenshot%202025-11-27%20at%2017.42.07.png)

![Detail Surat](./assets/Screenshot%202025-11-27%20at%2017.42.15.png)

### Data Penduduk
![Data Penduduk](./assets/Screenshot%202025-11-27%20at%2017.42.28.png)

### Manajemen User
![Manajemen User](./assets/Screenshot%202025-11-27%20at%2017.43.26.png)

### Kategori Surat
![Kategori Surat](./assets/Screenshot%202025-11-27%20at%2017.43.33.png)

## Teknologi yang Digunakan

- **Backend**: Laravel 11
- **Frontend**: Vue.js, Tailwind CSS
- **Database**: MySQL
- **Build Tool**: Vite
- **Testing**: PHPUnit
- **Export**: Maatwebsite/Excel, DOMPDF

## Persyaratan Sistem

- PHP >= 8.2
- Composer
- Node.js & npm
- MySQL >= 5.7

## Instalasi

1. Clone repository
```bash
git clone https://github.com/lana-techn/Laravel-Web-SuratDesa.git
cd Maulana\ E-Surat\ Desa
```

2. Install dependencies
```bash
composer install
npm install
```

3. Setup environment
```bash
cp .env.example .env
php artisan key:generate
```

4. Setup database
```bash
php artisan migrate
php artisan seed
```

5. Build assets
```bash
npm run build
```

6. Jalankan aplikasi
```bash
php artisan serve
```

## Kredensial Default

### Administrator
- Username: `admin`
- Password: `admintm1`
- Role: Admin

### Kepala Desa
- Username: `kades`
- Password: `tanimakmur`
- Role: Kades

## Struktur Database

- **Users**: Data pengguna aplikasi
- **Residents**: Data penduduk desa
- **Letters**: Data surat masuk/keluar
- **Categories**: Kategori jenis surat
- **VillageManagers**: Data pengelola desa
- **SubVillages**: Data dusun/sub-desa

## Kontribusi

Kontribusi sangat diterima! Silakan fork repository dan buat pull request dengan perubahan Anda.

## Lisensi

Aplikasi ini berlisensi MIT. Lihat file [LICENSE](./LICENSE) untuk detail lebih lanjut.

## Kontak & Dukungan

Untuk pertanyaan atau dukungan, silakan buat issue di repository ini.

---

**Dikembangkan dengan ❤️ untuk komunitas desa**
