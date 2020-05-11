@def title = "Räkneövning 2"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 4, 16)

## Räkneövning 2 - Uppgift 4.4 från [^moller]

Två triangulära block med tjockleken t är hoplimmande till en kvadrat med sidlängden $a$. Uppskatta medelspänningarna $\bar{\sigma}$ och $\bar{\tau}$ i limmet, om konstruktionen belastas enligt figuren.

\figurenc{/assets/uppg-4.4.png}

### Lösning

Vi börjar med att snitta i skarven och införa snittkrafter

\figurenc{/assets/uppg-4.4-snitt.png}

där $T$ är resultanten av skjuvspänningen och $S$ resultanten av normalspänningen, dvs

$$
T = \sqrt{2}at\bar{\tau},
$$
$$
S = \sqrt{2}at\bar{\sigma}
$$

Vi kan nu ställa upp jämvikt för friläggningen:

$$
\uparrow:\ T \cos(\pi/4) - S \cos(\pi/4) = 0 \quad \Rightarrow \quad T = S
$$
$$
\rightarrow:\ - T \cos(\pi/4) - S \cos(\pi/4) + P = 0 \quad \Rightarrow T = S = \frac{P}{\sqrt{2}}
$$

Från ekvation (1) och (2) kan svaret lösas ut

$$
\bar{\tau} = \bar{\sigma} = \frac{T}{\sqrt{2}at} = \frac{P}{2at}
$$

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
