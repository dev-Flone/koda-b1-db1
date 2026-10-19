# ERD Perpustakaan
``` mermaid
erDiagram
    direction TB

    PEMINJAM ||--|{ PEMINJAMAN: melakukan
    PETUGAS ||--|{ PEMINJAMAN: memproses
    KATEGORI ||--|{ BUKU: mengelompokkan
    RAK ||--|{ KATEGORI: menyimpan
    PEMINJAMAN ||--|{ BUKU: pinjam
    
    BUKU {
        int id_buku
        string name
    }
    RAK {
        int id_rak
        string name
        strin lokasi
    }

    KATEGORI {
        int id_kategori
        string name

    }
    PEMINJAM {
        int id_peminjam
        string name
        int nomor
    }
    PEMINJAMAN {
        int id_peminjaman
        date tanggal_pinjam
        date tanggal_kembali
        int id_peminjam
        int id_petugas
        string status
    }
    PETUGAS {
        int id_petugas
        string name
        int nomor
    }


```