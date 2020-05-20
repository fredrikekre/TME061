@def title = "Räkneövning 5"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 13)

## Räkneövning 5 - Uppgift 6.3 från [^moller]

\figurenc{/assets/uppg-6.3.png}

Betrakta en konsolbalk som belastas med en fördelad last med den konstanta intensiteten $q = -Q/L$ (kraft/längdenhet). Konsolens längd är $L$ och böjstyvheten är $EI$.

**a)** Använd jämviktsekvationer för att beräkna stödreaktionerna samt snittmomentet $M(x)$ i balken.

**b)** Använd jämviktsekvationer för att beräkna tvärkraften $T(x)$ i balken.

**c)** Utgå ifrån momentet i deluppgift a) och använd sambandet mellan $M(x)$ och $T(x)$, för att beräkna tvärkraften.

### Lösning

**a/b)**
Vi börjar med att ställa upp en global jämvikt, baserat på friläggningen i figuren nedan, för att få fram reaktionskraft och reaktionsmoment.

\figurenc{/assets/uppg-6.3-global.png}

Vertikal kraftjämvikt:

$$
\uparrow:\ R_a - \frac{Q}{L}L = 0 \quad \Rightarrow \quad R_a = Q.
$$

Momentjämvikt kring $x = 0$:
$$
\circlearrowleft:\ M_a - \underbrace{\frac{Q}{L}L}_{\mathrm{kraft}}\ \underbrace{\frac{L}{2}}_{\mathrm{hävarm}} = 0 \quad \Rightarrow \quad M_a = \frac{QL}{2}.
$$

För att få reda på snittmoment och snittvärkraft gör vi ett snitt vid koordinat $x$ enligt figur:

\figurenc{/assets/uppg-6.3-snitt.png}

Vi ställer sen kraftjämvikt för snittet, och får ut $T(x)$:

$$
\uparrow:\ T(x) + R_a - \frac{Q}{L}x = 0 \quad \Rightarrow \quad T(x) = \frac{Q}{L}x - R_a = \frac{Q}{L}x - Q,
$$
och momentjämvikt kring $x$ och får ut $M(x)$:
$$
\circlearrowright:\ M(x) - M_a - \underbrace{\frac{Q}{L}x}_{\mathrm{kraft}}\ \underbrace{\frac{x}{2}}_{\mathrm{hävarm}} + R_a x = 0 \quad \Rightarrow \quad M(x) = \frac{Q}{2L}x^2 - R_a x + M_a = \frac{Q}{2L}x^2 -Q x + \frac{QL}{2}
$$

**c)** Vi vet att tvärkraften är derivatan av momentet, så från ekvation xxx kan vi räkna ut tvärkraften genom att derivera:

$$
T(x) = \frac{\mathrm{d}M(x)}{\mathrm{d}x} = \frac{\mathrm{d}}{\mathrm{d}x}\left(\frac{Q}{2L}x^2 -Q x + \frac{QL}{2}\right) =  \frac{Q}{L}x - Q.
$$

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
