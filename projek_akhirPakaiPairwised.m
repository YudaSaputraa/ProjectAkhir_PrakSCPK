data = readmatrix('maskap.csv', 'Range', 'F2:S230');
dataAlternatif = readtable('maskap.csv');
cellAlternatif = dataAlternatif{:, 3};

kolomAlternatif = string(cellAlternatif);
namaAlternatif = kolomAlternatif.';

sumAlternatif = 229;
sumKriteria = 14;

kriterias = cell(1,14);
temp = cell(1, 229);

for i = 1 : sumKriteria
    kriterias{i} = zeros(sumAlternatif, sumAlternatif);
    for j = 1 : sumAlternatif
        temp{j} = data(:,i)/data(j,i);
    end
    norm = normalisasi(cell2mat(temp));
    eigen = eigenVector(norm);
    kriterias{i} = eigen;
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

function eigenVectorValue = eigenVector(m)
    [a b] = size(m);
    for i = 1 : a,
        sumRow = 0;
        for j = 1 : b,
            sumRow = sumRow + m(i, j);
        end
     v(i) = sumRow;
    end
    eigenVectorValue = transpose(v)/a;
end     