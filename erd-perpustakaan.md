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
        int id_buku PK
        string name
    }
    RAK {
        int id_rak PK
        string name
        string lokasi
    }

    KATEGORI {
        int id_kategori PK
        string name

    }
    PEMINJAM {
        int id_peminjam PK
        string name
        int nomor
    }
    PEMINJAMAN {
        int id_peminjaman PK
        date tanggal_pinjam
        date tanggal_kembali
        int id_peminjam FK
        int id_petugas FK
        string status
    }
    PETUGAS {
        int id_petugas PK
        string name
        int nomor
    }


```