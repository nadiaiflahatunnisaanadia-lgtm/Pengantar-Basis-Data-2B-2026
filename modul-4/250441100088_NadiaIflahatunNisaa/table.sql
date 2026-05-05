USE db_akademik;

CREATE TABLE Dosen (
    id_dosen INT PRIMARY KEY,
    nama_dosen VARCHAR(100),
    bidang_keahlian VARCHAR(50)
);

CREATE TABLE Mahasiswa (
    id_mahasiswa INT PRIMARY KEY,
    nama_mahasiswa VARCHAR(100),
    program_studi VARCHAR(100),
    angkatan INT
);

CREATE TABLE Mata_Kuliah (
    id_mata_kuliah VARCHAR(10) PRIMARY KEY,
    nama_mk VARCHAR(100),
    sks INT,
    id_dosen INT,
    FOREIGN KEY (id_dosen) REFERENCES Dosen(id_dosen)
);

CREATE TABLE KRS (
    id_krs INT PRIMARY KEY,
    id_mahasiswa INT,
    id_mata_kuliah VARCHAR(10),
    semester_ambil INT,
    FOREIGN KEY (id_mahasiswa) REFERENCES Mahasiswa(id_mahasiswa),
    FOREIGN KEY (id_mata_kuliah) REFERENCES Mata_Kuliah(id_mata_kuliah)
);