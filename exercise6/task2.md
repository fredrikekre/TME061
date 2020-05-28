@def title = "Räkneövning 6"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 18)

## Räkneövning 6 - Uppgift 7.6 från [^moller]

Bestäm den temperaturhöjning $\Delta T_{\mathrm{kr}}$ som ger knäckning om balken i föregående uppgift (7.5 från [^moller]) understöds mitt på spannet enligt figur.

\figurenc{/assets/uppg-7.6.png}

### Lösning

Vi använder Euler knäckfall från formelsamling[^ekh] och identifierar vår uppgift till Eulers tredje knäckfall: fast inspänd i en ände, fritt upplagd i den andra (till skillnad mot 7.5 från [^moller] som är fast inspänd i båda ändar). Kritisk last blir då:

$$
P_\mathrm{kr} = \frac{2.05 \pi^2 EI}{L^2}
$$

Vi kan nu räkna ut vilken temperaturökning det motsvarar. Vi vet att för ett linjärt elastiskt material har vi

$$
\varepsilon = \frac{\sigma}{E} + \alpha \Delta T = \frac{N}{AE} + \alpha \Delta T.
$$

Eftersom stången är fast i båda ändar måste $\varepsilon = 0$, vilket ger oss:

$$
N = -AE\alpha \Delta T.
$$

Vi kan nu sätta $P_\mathrm{kr} = -N$ och koppla ihop ekvation (1) och (3) för att få fram kritisk temperatur:

$$
\frac{2.05 \pi^2 EI}{L^2} = AE\alpha \Delta T_\mathrm{kr} \quad \Rightarrow \quad \Delta T_\mathrm{kr} = \frac{2.05 \pi^2 I}{A\alpha L^2}
$$

@@note @@title Konvention @@ @@content
Normalkraft $N$ har en definierad riktning ut från en stång, men eftersom endast tryckkrafter orsakar knäckning definieras knäckkraft $P$ ofta i motsatt riktning, vilket gör att vi sätter $P_\mathrm{kr} = -N$.
@@ @@

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
[^kth]: B. Sundström, *Handbok och formelsamling i Hållfasthetslära*
