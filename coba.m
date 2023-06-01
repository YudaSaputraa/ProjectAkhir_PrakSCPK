Weighted Product (WP)
rating = [0.75 2000 18 50 500;
 0.5 1500 20 40 450;
 0.9 2050 35 35 800;];

classify = [0 0 0 1 0];
alternatif = ["Ngemplak" "Kalasan" "Kota Gedhe"];
w = [5 3 4 4 2];
norm_w = normalisasi(w);
[m, n] = size(rating);
for j = 1: n
 if classify(j) == 0, norm_w(j)=-1*norm_w(j);
 end
end
for i = 1 : m
 vektorS(i) = prod(rating(i,:).^norm_w);
end
vektorV = vektorS/sum(vektorS);
[highScore, index] = max(vektorV);
pemenang = alternatif(index);
function hasilNormalisasi = normalisasi(m)
 sM = sum (m);
 hasilNormalisasi = m./sM;
end
