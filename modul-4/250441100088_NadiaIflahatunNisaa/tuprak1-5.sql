Tugas Pertama

SELECT mk.nama_mk, mk.sks, d.nama_dosen
FROM Mata_Kuliah mk
JOIN Dosen d ON mk.id_dosen = d.id_dosen
WHERE d.bidang_keahlian IN ('Pemrograman','Basis Data');

Tugas Kedua

SELECT m.nama_mahasiswa, k.id_mata_kuliah
FROM Mahasiswa m
LEFT JOIN KRS k ON m.id_mahasiswa = k.id_mahasiswa;


Tugas Ketiga

SELECT m.nama_mahasiswa, mk.nama_mk, k.semester_ambil
FROM Mahasiswa m
JOIN KRS k ON m.id_mahasiswa = k.id_mahasiswa
JOIN Mata_Kuliah mk ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE k.semester_ambil BETWEEN 3 AND 5
ORDER BY k.semester_ambil ASC;


Tugas Keempat

SELECT m.nama_mahasiswa, mk.nama_mk, mk.sks
FROM Mahasiswa m
JOIN KRS k ON m.id_mahasiswa = k.id_mahasiswa
JOIN Mata_Kuliah mk ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE m.program_studi = 'Sistem Informasi'
AND mk.sks > 2
ORDER BY mk.sks DESC, m.nama_mahasiswa ASC;


Tugas Kelima

SELECT m.nama_mahasiswa, m.angkatan, mk.nama_mk, d.nama_dosen
FROM Mahasiswa m
JOIN KRS k ON m.id_mahasiswa = k.id_mahasiswa
JOIN Mata_Kuliah mk ON k.id_mata_kuliah = mk.id_mata_kuliah
JOIN Dosen d ON mk.id_dosen = d.id_dosen
WHERE m.angkatan BETWEEN 2023 AND 2025
AND d.nama_dosen IN ('Dr. Budi','Prof. Siti')
ORDER BY m.angkatan DESC;

