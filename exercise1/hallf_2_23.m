clear all

% definiera variabler som är symboliska
syms E L A  Q  E a1 a2 a3 a

% töjningar
epsilon1 = a1 / L; epsilon2 = a2 / L; epsilon3 = a3 / L;

% spänningar, antag Hookes lag till att börja med
sigma1 = E * epsilon1; sigma2 = E * epsilon2; sigma3 = E * epsilon3;

% inre normalkrafter
N1 = sigma1 * A; N2 = sigma2 * A; N3 = sigma3 * A;

% jämviktsekvationer, vertikal kraft- och momentjämvikt:
ekv_vertikal_kraft = N1 + N2 + N3 - Q;
ekv_moment         = N2 * a + N3 * 2 * a - Q * 4 * a / 3;

% kompabilitetsekvation
ekv_kompatibilitet = (a3 - a1) / (2 * a) - (a2 - a1) / a;

% Lös obekanta a1, a2, a3
[a1_, a2_, a3_] = solve(ekv_vertikal_kraft == 0, ekv_moment == 0, ekv_kompatibilitet == 0, [a1, a2, a3]);

N1 = subs(N1, [a1, a2, a3], [a1_, a2_, a3_])
N2 = subs(N2, [a1, a2, a3], [a1_, a2_, a3_])
N3 = subs(N3, [a1, a2, a3], [a1_, a2_, a3_])

sigma1 = subs(sigma1, [a1, a2, a3], [a1_, a2_, a3_])
sigma2 = subs(sigma2, [a1, a2, a3], [a1_, a2_, a3_])
sigma3 = subs(sigma3, [a1, a2, a3], [a1_, a2_, a3_])

% största spänning således i lina 3, antag idealplastiskt i denna lina

clear all
% definiera variabler som är symboliska
syms E L A  Q  E a1 a2 a3 a sigma_y

% töjningar
epsilon1 = a1 / L; epsilon2 = a2 / L; epsilon3 = a3 / L;

% spänningar, antag Hookes lag till att börja med
sigma1 = E * epsilon1; sigma2 = E * epsilon2; sigma3 = sigma_y;

% inre normalkrafter
N1 = sigma1 * A; N2 = sigma2 * A; N3 = sigma3 * A;

% jämviktsekvationer, vertikal kraft- och momentjämvikt:
ekv_vertikal_kraft = N1 + N2 + N3 - Q;
ekv_moment         = N2 * a + N3 * 2 * a - Q * 4 * a / 3;

% kompabilitetsekvation
ekv_kompatibilitet = (a3 - a1) / (2 * a) - (a2 - a1) / a;

%Lös obekanta a1, a2, a3
[a1_, a2_, a3_] = solve(ekv_vertikal_kraft == 0, ekv_moment == 0, ekv_kompatibilitet == 0, [a1, a2, a3]);

N1 = subs(N1, [a1, a2, a3], [a1_, a2_, a3_])
N2 = subs(N2, [a1, a2, a3], [a1_, a2_, a3_])
N3 = subs(N3, [a1, a2, a3], [a1_, a2_, a3_])
sigma1 = subs(sigma1, [a1, a2, a3], [a1_, a2_, a3_])
sigma2 = subs(sigma2, [a1, a2, a3], [a1_, a2_, a3_])
sigma3 = subs(sigma3, [a1, a2, a3], [a1_, a2_, a3_])
