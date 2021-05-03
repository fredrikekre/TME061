@def title = "Räkneövning 4"
@def hascode = true
@def hasmath = true
@def date = Date(2021, 5, 4)

## Räkneövning 4 - Uppgift 9.3 från [^moller]

En cirkulär hålskiva av lineärt elastiskt material $E, \nu$ passar exact in i ett hål i
en stel kropp. Beräkna kontakttrycket $p_y$ som uppkommer längs ytterranden, då innerranden
utsätts för ett tryck $p_i$. (Plant spänningstillstånd.)

\figurenc{/assets/uppg-9.3.png}

### Lösning

Differentialekvation för ett axisymmetriskt problem och plan spänning ($\sigma_{zz} = \tau_{rz} = \tau_{\phi z} = 0$) utan volymskraft ges av:
$$
\frac{\mathrm{d}}{\mathrm{d}r} \left( \frac{1}{r} \frac{\mathrm{d}}{\mathrm{d}r} (u_r\ r) \right) = 0.
$$
Integrering två gånger ger den allmänna lösningen:
$$
u_r(r) = A_1 r + A_2/r.
$$
För att ta fram $A_1$ och $A_2$ krävs randvillkor. Från figuren ges ett randvillkor på förskjutningen i ytterkant:
$$
u_r(r = b) = 0 \quad \Rightarrow \quad A_1 b + A_2/b = 0,
$$
och ett randvillkor på spänningen i innerkant:
$$
\sigma_r(r=a) = -p_i.
$$
Ett uttryck för spänningen fås från Hooke's lag:
$$
\sigma_r(r) = \frac{E}{1 - \nu^2} (\varepsilon_r + \nu \varepsilon_\varphi),
$$
där
$$
\varepsilon_r(r) = \frac{\mathrm{d} u_r(r)}{\mathrm{d} r} = A_1 - \frac{A_2}{r^2},
$$
$$
\varepsilon_\varphi(r) = \frac{u_r(r)}{r} = A_1 + \frac{A_2}{r^2}.
$$

Två ekvationer och två obekanta gör att $A_1$ och $A_2$ kan lösas ut. Med integrationskonstanerna kända kan sedan trycket vid ytterkanten räknas ut:
$$
p_y = -\sigma_r(r = b) =  \frac{2 p_i}{1 + \nu + (b/a)^2 (1 - \nu)}.
$$

### MATLAB kod

```
clear all; close all

% definiera variabler
syms A1 A2 ur(r) a b nu Em p_inner 

% lösning till axisymmetrisk d.e. utan volymskraft Kr
ur(r) = A1 * r + A2 / r;

% töjningar i radiell och omkretsled
eps_r = diff(ur(r), r);
eps_phi = ur(r) / r;

% spänningar från Hookes lag
sigma_r(r) = Em / (1 - nu^2) * (eps_r + nu * eps_phi);
sigma_phi(r) = Em / (1 - nu^2) * (eps_phi + nu * eps_r);

% bestämning av integrationskonstanter

[A1_, A2_] = solve(sigma_r(a) == -p_inner, ur(b) == 0, A1, A2);

% utskrift av lösning på integrationskonstanter
disp(['A1 = ' char(simplify(A1_))])
disp(['A2 = ' char(simplify(A2_))])

% sätt in integrationskonstanter i uttryck för radiell spänning
sigma_r_(r) = simplify(subs(sigma_r, [A1, A2], [A1_, A2_]));

% efterfrågat tryck på ytterranden (r = b) fås som -sigma_r_(b)
disp(['Tryck på ytterranden = ' char(-simplify(sigma_r_(b)))])
```

### Julia kod

```julia:./task93
using Symbolics

# Variabler
@variables r A₁ A₂ a b E ν pᵢ

# Allmän lösning
u = A₁ * r + A₂ / r

# Töjningar
D = Differential(r)
εr = D(u)
εφ = u / r

# Spänning
σr = E / (1 - ν^2) * (εr + ν * εφ)
σr = expand_derivatives(E / (1 - ν^2) * (εr + ν * εφ))

# Ekv. system för integrations konstanter
eqs = [
    substitute(u, Dict(r => b)) ~ 0,
    substitute(σr, Dict(r => a)) ~ -pᵢ
]

X = Symbolics.solve_for(eqs, [A₁, A₂])

# Tryck vid ytterkant
py = -substitute(σr, Dict(r => b, A₁ => X[1], A₂ => X[2]))
```

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
