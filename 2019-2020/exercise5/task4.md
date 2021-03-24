@def title = "Räkneövning 5"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 13)

## Räkneövning 5 - Uppgift 5.21 från [^moller]

En balk har ett tunnväggigt cirkulärt tvärsnitt med radien $R$ och godstjockleken $t \ll R$. Bestäm maximal drag- och tryckspänning i ett snitt där böjmomentet är $M_y = M$.

### Lösning

Spänningen i en balk utsatt för böjning (och tryck/drag) ges av Naviers formel:

$$
\sigma = \frac{M}{I}z + \frac{N}{A}.
$$

I detta fallet finns ingen normalkraft, dvs $N = 0$.

Yttröghetsmomentet för ett tunnväggigt cirkulärt tvärsnitt fås från formelsamling:

$$
I_y = \frac{\pi d^3 t}{8} = \frac{\pi (2R)^3 t}{8} = \pi R^3 t
$$

där $d$ är diametern och $t$ tjockleken. För maximal spänning ska vi studera max $\pm z$, vilket blir längst upp/ner av tvärsnittet, dvs $z_\mathrm{max} = \pm R$. Maximal/minimal spänning fås nu från ekvation (1):

$$
\sigma_\mathrm{max} = -\sigma_\mathrm{min} = \pm \frac{M}{\pi R^3 t}R = \frac{M}{\pi R^2 t}
$$

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
