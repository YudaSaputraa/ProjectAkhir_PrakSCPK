data = readmatrix('maskap.csv', 'Range', 'F2:S230');
dataAlternatif = readtable('maskap.csv');
cellAlternatid = dataAlternatif{:, 3};

kolomAlternatif = string(cellAlternatid);
namaAlternatif = kolomAlternatif.';

sumAlternatif = 229;
sumKriteria = 14;
kriterias = cell(1, 14);

for i= 1 : sumKriteria
    kriterias{i} = normalisasi(data(:, i));
end

eigenVektorAllKriteria = cell2mat(kriterias);

wKriteria = [7; 13; 14; 4; 3; 2; 12; 10; 6; 1; 9; 5; 11; 8;];
eigenKriteria = normalisasi(wKriteria);

hasilAkhir = eigenVektorAllKriteria * eigenKriteria;
[skorTertinggi, index] = max(hasilAkhir);
pemenang = skorTertinggi;
nama = namaAlternatif(index);

function hasilNormalisasi = normalisasi(m)
    sM = sum (m);
    hasilNormalisasi = m./sM;
end