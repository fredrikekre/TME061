@def title = "Räkneövning 1"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 3, 25)

## Räkneövning 1 - Uppgift 2.3 från [^moller]

Vilka spänningar fås i de två stängerna (se figur), om den lineärt elastiska anordningen monteras mellan två stela väggar med ett passningsfel $\Delta \ll L_1 + L_2$?
\figurenc{/assets/uppg-2.3.png}

### Lösning

För många problem är det samma tre samband som måste utnyttjas -- jämvikt-, material-, och kompatibilitetssamband.

1. **Jämviktssamband**

   Vi börjar med att snitta stången och införa snittkrafter:
   \figure{Snittad stång med införda snittkrafter.}{fig-3}{/assets/uppg-2.3-snitt.png}

   Vi ställer sedan upp jämvikt för snittet:
   $$
   \rightarrow:\ -N_1 + N_2 = 0 \qquad \Rightarrow \qquad N_1 = N_2 = N.
   $$

2. **Materialsamband**

   För ett lineärt elastiskt material har vi sambandet:
   $$
   \sigma = E \varepsilon,
   $$
   där $\sigma$ är spänningen, $E$ materialets elasticitetsmodul och $\varepsilon$ töjningen. Vi kan skriva om detta på "strukturnivå" istället för materialnivå genom att använda följande två samband:
   $$
   \sigma = \frac{N}{A}, \qquad \varepsilon = \frac{\delta}{L},
   $$
   där $N$ är normalkraften, $A$ arean, $\delta$ förlängningen och $L$ ursprungslängden. Om vi definierar de två delarnas förlängningar som $\delta_1$ respektive $\delta_2$ kan vi skriva om ekv. (2) för varje del:
   $$
   \sigma_1 = \frac{N_1}{A_1} = E\frac{\delta_1}{L_1} \qquad \Rightarrow \qquad \delta_1 = \frac{N L_1}{E A_1},
   $$
   $$
   \sigma_2 = \frac{N_2}{A_2} = E\frac{\delta_2}{L_2} \qquad \Rightarrow \qquad \delta_2 = \frac{N L_2}{E A_2}.
   $$

<!--    @@note @@title Notering @@ @@content
   Notera att eftersom $N_1 = N_2$ från ekv. (1) har vi också sambandet
   $$
   \sigma_1 A_1 = \sigma_2 A_2 \qquad \Rightarrow \qquad \sigma_2 = \sigma_1 \frac{A_1}{A_2}
   $$
   vilket vi kan använda senare.
   @@ @@ -->

3. **Kompatibilitetssamband**

   För att anordningen ska få plats mellan väggarna krävs att den totala *förlängningen* är $-\Delta$, dvs den måste bli kortare. De två delarnas förlängningar är $\delta_1$ respektive $\delta_2$ så vårat kompatibilitetssamband blir då:
   $$
   \delta_1 + \delta_2 = -\Delta,
   $$
   dvs summan av förlängningarna ger den totala förlängingen.

Vi har nu 3 ekvationer: (4), (5) och (6) och 3 obekanta: ($N$, $\delta_1$, and $\delta_2$) så systemet är lösbart. Sätt in (4) och (5) i (6) vilket ger oss en ekvation för $N$:
$$
\frac{N L_1}{E A_1} + \frac{N L_2}{E A_2} = -\Delta \qquad \Rightarrow \qquad N = \frac{-\Delta E A_1 A_2}{A_2 L_1 + A_1 L_2}.
$$
Spänningen i de båda delarna fås nu direkt av (4) och (5)
$$
\sigma_1 = \frac{N_1}{A_1} = \frac{N}{A_1} = \frac{-\Delta E A_2}{A_2 L_1 + A_1 L_2},
$$
$$
\sigma_2 = \frac{N_2}{A_2} = \frac{N}{A_2} = \frac{-\Delta E A_1}{A_2 L_1 + A_1 L_2}.
$$

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
