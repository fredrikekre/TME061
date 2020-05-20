@def title = "Räkneövning 5"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 13)

## Räkneövning 5 - Uppgift 6.8 från [^moller]

Beräkna största (till beloppet) snittmomentet i en balk med last enligt figur. $Q$ är kraftresultanten till en fördelad last $q(x)$ (kraft/längd), vars intensitet varierar lineärt från $0$ till $q_\mathrm{max}$ enligt figuren.

\figurenc{/assets/uppg-6.8.png}

### Lösning

Vi börjar med en global jämvikt för att lösa ut de två reaktionskrafterna.

\figurenc{/assets/uppg-6.8-snitt.png}

Från friläggningen i figuren ovan ställer vi upp följande kraftjämvikt:

$$
R_A + R_B - Q = 0,
$$
och följande momentjämvikt kring det vänstra stödet:
$$
R_B 2L - \underbrace{Q}_{\mathrm{kraft}}\ \underbrace{3L\frac{2}{3}}_{\mathrm{hävarm}} = 0.
$$

Ekvationerna ovan ger oss
$$
R_A = 0,\ R_B = Q,
$$
vilket verkar rimligt eftersom triangellastens tyngdpunkt ligger rakt ovanför det högra stödet.


För att förenkla när vi snittar i balken tar vi fram ett uttryck för $q(x)$:

$$
q(x) = \frac{q_\mathrm{max}}{3L}x = \left\{\frac{3Lq_\mathrm{max}}{2} = Q \Rightarrow q_\mathrm{max} = \frac{2Q}{3L}\right\} =  \frac{2Q}{9L^2}x
$$

Vi gör nu två snitt: ett mellan stöden och ett till höger om det högra stödet enligt figur:

\figurenc{/assets/uppg-6.8-snitt2.png}

Det första snittet ger oss nu $M(x)$ för $0 \leq x \leq 2L$ och det andra snittet ger oss $M(x)$ för $2L \leq x \leq 3L$. Momentjämviktsekvationer för snitten:

$$
M(x) + R_A x - \underbrace{\frac{q(x)x}{2}}_{\mathrm{kraft}}\ \underbrace{\frac{x}{3}}_{\mathrm{hävarm}} = 0 \quad \Rightarrow \quad M(x) = \frac{q(x)x^2}{6} = \frac{Qx^3}{27L^2} \quad 0 \leq x \leq 2L
$$

$$
M(x) + R_A x + R_B (x-2L) - \underbrace{\frac{q(x)x}{2}}_{\mathrm{kraft}}\ \underbrace{\frac{x}{3}}_{\mathrm{hävarm}} = 0 \quad \Rightarrow \quad M(x) = ... = \frac{Qx^3}{27L^2} - Q x + 2QL \quad 2L \leq x \leq 3L
$$

Det återstår nu bara att hitta maxima. Vi måste kolla interna min/max och ändpunktern på intervallen. Vi vet också, från randvillkor, att $M(0) = M(3L) = 0$. Alla punkter med derivata 0 ligger utanför intervallen, så max måste vara vid det högra stödet:

$$
M_{\mathrm{max}} = M(2L) = \frac{8}{27}QL
$$

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
[^kth]: B. Sundström, *Handbok och formelsamling i Hållfasthetslära*
