@def title = "Räkneövning 4"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 11)

## Räkneövning 4 - Uppgift 8.4 från [^moller]

\figurenc{/assets/uppg-8.4.png}

En packning består av två delar med olika material enligt figuren. Vid montering uppstår ett kontakttryck $p$ på övre ytan av packningsdel 1 -- delen 2 pressas då mot anliggande stålytor så att tätning uppstår. Stålet är mycket styvare än packningen och kan betraktas som oändligt styvt. Packningsmaterial är lineärt elastiska och fria att utvidga sig i $z$-led; friktionen mellan de olika kontaktytorna kan försummas.

Data: $a = 2b = c = \SI{20}{mm}$, $p = \SI{100}{MPa}$, $E_1 = E_2/3 = \SI{10}{GPa}$, $\nu_1 = \nu_2 = 0.4$.

**a)** Bestäm normalspänningarna i de båda packningsdelarna ($\sigma_{x,1},\ \sigma_{y,1},\ \sigma_{x,2},\ \sigma_{y,2}$).

**b)** Bestäm hur mycket, $-\delta_y$, som packningsdel 1 trycks ner, samt hur långt, $\delta_x$, som kontaktytan mellan de två delarna förskjuts.

### Lösning

Eftersom kontakten är friktionsfri blir alla skjuvspänningar 0, och eftersom packningen är fri att röra sig i $z$-led blir $\sigma_z = 0$. De fyra resterande spänningar kräver fyra ekvationer att lösa ut. En vertikal jämvikt för del 1 ger:

$$
\sigma_{y,1} = -p,
$$

och horisontell jämvikt för snittet mellan delarna ger

$$
\sigma_{x,1} = \sigma_{x,2}.
$$

Jämviktsekvationer är inte tillräckligt för att lösa problemet, så vi studerar kompatibilitet. Vi noterar att del 2 inte kan röra sig i $y$-led, dvs förlängningen är 0

$$
c\varepsilon_{y,2} = 0.
$$

Vi noterar också att den kombinerade förlängningen av båda delarna i $x$-led är 0:

$$
a\varepsilon_{x,1} + b\varepsilon_{x,2} = 0.
$$

Med hjälp at Hooke's generaliserade lag (materialsamband) fås tillräckligt med ekvationer för att lösa ut spänningarna:

$$
\sigma_{x,1} = \sigma_{x,2} = -\frac{20p}{57},\ \sigma_{y,1} = -p,\ \sigma_{y,2} = -\frac{8p}{57}.
$$

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
