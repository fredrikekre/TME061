@def title = "Räkneövning 3"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 6)

## Räkneövning 3 - Uppgift 8.15 från [^moller]

En axel med cirkulärt tvärsnitt är fast inspänd i bägge ändar och belastas med ett vridmoment $T$ enligt figuren. Materialet är lineärt elastiskt–idealplastiskt med skjuvmodulen $G$ och sträckgränsen $\tau_s$.
Bestäm det vridmoment $T = T_s$ vid vilket någon del av axeln börjar plasticera, samt motsvarande vridvinkel $\varphi_s$ vid momentets angreppspunkt.

\figurenc{/assets/uppg-4.18.png}

| G | $\boldsymbol{\tau_s}$ | L | d |
|:--|:--|:--|:--|
| $\SI{75}{GPa}$ | $\SI{100}{MPa}$ | $\SI{300}{mm}$ | $\SI{20}{mm}$ |


### Lösning

Vi kommer här behöva använda de tre sambandanden för jämvikt, material, och kompatibilitet.

1. **Jämviktssamband**

   Vi börjar med att snitta axeln och införa snittmoment:
   \figurenc{/assets/uppg-4.18-snitt.png}
   <!-- \figure{Snittad stång med införda snittkrafter.}{fig-3}{/assets/uppg-2.3-snitt.png} -->

   Vi ställer sedan upp momentjämvikt för snittet:
   $$
   \rightarrow:\ -T_1 + T_2  + T = 0.
   $$

2. **Materialsamband**

   För en lineärt elastiskt axel har vi sambandet:
   $$
   T = K G \frac{\mathrm{d}\varphi}{\mathrm{d}x}, \quad \mathrm{(jämför\ med\ } N = A E\varepsilon \mathrm{\ för\ en\ stång})
   $$
   där $K$ är tvärsnittets vridstyvhetsfaktor. Vi kan alltså ställa upp följade samband för $T_1$ och $T_2$:
   $$
   T_1 = K G \frac{\mathrm{d}\varphi_1}{\mathrm{d}x},
   $$
   $$
   T_2 = K G \frac{\mathrm{d}\varphi_2}{\mathrm{d}x}.
   $$

<!--    @@note @@title Notering @@ @@content
   Notera att eftersom $N_1 = N_2$ från ekv. (1) har vi också sambandet
   $$
   \sigma_1 A_1 = \sigma_2 A_2 \qquad \Rightarrow \qquad \sigma_2 = \sigma_1 \frac{A_1}{A_2}
   $$
   vilket vi kan använda senare.
   @@ @@ -->

3. **Kompatibilitetssamband**

   Eftersom axeln är fast inspänd i båda ändar är vridningsvinkeln 0 där: $\varphi(x = 0) = \varphi(x = 3L) = 0$. Vi inför $\varphi = \varphi(x = 2L)$ som vridningsvinkeln vid momentets angreppspunkt. Vi kan då ställa upp följande samband för derivatan av vridningen för vänster och höger del
   $$
   \frac{\mathrm{d}\varphi_1}{\mathrm{d}x} = \frac{\varphi(x = 2L)-\varphi(x=0)}{2L - 0} = \frac{\varphi}{2L},
   $$
   $$
   \frac{\mathrm{d}\varphi_2}{\mathrm{d}x} = \frac{\varphi(x = 3L)-\varphi(x=2L)}{3L - 2L} = \frac{-\varphi}{L}.
   $$

Vi har nu tillräckligt med information för att lösa systemet. Vi sätter in ekvation (6-7) i (4-5), och sen (4-5) i ekvation (1):

$$
-K G \frac{\varphi}{2L} + K G \frac{-\varphi}{L}  + T = 0 \quad \Rightarrow \quad \varphi = \frac{2LT}{3KG}.
$$

Eftersom spänningen kommer bli störst i den högra delen (störst moment) ställer vi upp en ekvation för den maximala spänningen i den delen, och sätter den till sträckgränsen:
$$
\tau_s = |G \frac{d}{2} \frac{\mathrm{d}\varphi_2}{\mathrm{d}x}| = |G \frac{d}{2} \frac{-\varphi}{L}| = |-\frac{T_sd}{3K}| \quad \Rightarrow \quad T_s = \pm\frac{3K\tau_s}{d}
$$

Vridstyvheten för en massiv axel fås från formelsamling:
$$
K = \frac{\pi d^4}{32}
$$
vilket ger oss svaren:
$$
T_s = \pm\frac{3\pi d^3}{32}\tau_s
$$
Slutligen får vi fram den motsvarande vinkeln från ekvation (7) med $T = T_s$:
$$
\varphi_s = \frac{2LT_s}{3KG} = \pm\frac{2L}{Gd}\tau_s
$$

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
