@def title = "Räkneövning 1"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 3, 25)

## Räkneövning 1 - Uppgift hö1 från [^extra]

Två linjärt termo-elastiska massiva cylindrar (Elasticitetsmodul $E$ och linjär temperaturutvidgningskoefficient $\alpha$) med mått enligt figur är med exakt passning monterade mellan två stela väggar. Ställ upp de ekvationer som behövs för att bestämma reaktionskrafter i väggarna om den större cylindern värms $T^\circ$C.

\figurenc{/assets/uppg-ho1.png}

### Lösning

Vi börjar med att frilägga och införa snittkrafter enligt figur.
\figurenc{/assets/uppg-ho1-snitt.png}

Kraftjämvikt ger:
$$
\rightarrow:\ -N_1 + N_2 = 0 \qquad \Rightarrow \qquad -\sigma_1 A_1 + \sigma_2 A_2 = 0.
$$

För att gå vidare ställer vi upp materialsamband. För linjärt elastiskt material får vi
$$
\varepsilon_1 = \frac{\sigma_1}{E} + \alpha \Delta T_1 = \frac{\sigma_1}{E},
$$
$$
\varepsilon_2 = \frac{\sigma_2}{E} + \alpha \Delta T_2 = \frac{\sigma_2}{E} + \alpha T,
$$
där $\varepsilon_1$ och $\varepsilon_2$ är den totala töjningen i respektive del. Töjningen kan skrivas som kvoten mellan förlängning och ursprungslängd. Vi definierar $\delta_1$ och $\delta_2$ till att vara de båda delarnas förlängning. Eftersom stångsystemet är fast mellan väggarna måste den totala förlängningen vara 0, dvs
$$
\delta_1 + \delta_2 = 0 \qquad \Rightarrow \qquad \delta = \delta_1 = -\delta_2.
$$
Vi kan nu skriva töjningen i varje del som
$$
\varepsilon_1 = \frac{\delta_1}{L_1} = \frac{\delta}{2L},
$$
$$
\varepsilon_2 = \frac{\delta_2}{L_2} = -\frac{\delta}{3L}.
$$

Vi har nu 6 ekvationer och 6 obekanta ($N_1$, $N_2$, $\sigma_1$, $\sigma_2$, $\delta_1$, $\delta_2$) $\Rightarrow$ lösbart system!

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
