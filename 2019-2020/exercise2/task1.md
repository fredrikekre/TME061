@def title = "Räkneövning 2"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 4, 16)

## Räkneövning 2 - Uppgift 4.2 från [^moller]

Vid provning av ett lim används ett dubbelt överlappsförband enligt figuren. Brott erhölls i limfogen då $Q = \SI{32}{kN}$. Viken medelskjuvspänning rådde i limmet omedelbart före brott?

\figurenc{/assets/uppg-4.2.png}

### Lösning

Medelskjuvspänningen kan räknas ut som

$$
\tau = \frac{F}{A}
$$

där $F$ är kraften och $A$ arean. Kraften som överförst genom limmet är $Q$, och den överförs på två ytor med $\SI{20}{mm}\times\SI{40}{mm}$ vardera. Skjuvspänningen vid brott blir då

$$
\tau = \frac{Q}{2hb} = \frac{32\times10^3}{2 (40 \times 10^{-3})(20 \times 10^{-3})} = \SI{20}{MPa}.
$$

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
