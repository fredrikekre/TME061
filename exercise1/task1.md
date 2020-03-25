@def title = "Räkneövning 1"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 3, 25)

## Räkneövning 1 - Uppgift 1.7 från [^moller]

En rak stång (se figur) är sammansatt av tre cylindriska delar med tvärsnittsareorna $A_1 = \SI{75}{mm}^2$, $A_2 = \SI{100}{mm}^2$, respektive $A_3 = \SI{50}{mm}^2$. Bestäm normalspänningen i varje del då stången belastas med ett system av krafter enligt figuren, om $P = \SI{2}{kN}$?

\figurenc{/assets/uppg-1.7.png}

### Lösning

Som ett första kontrollsteg är det alltid bra att kontrollera att strukturen är i (global) jämvikt genom att ställa upp en global jämviktsekvation och verifiera att $\sum F = 0$[^ma] :
$$
\rightarrow: \ 3P - P - 4P + 2P = 0.
$$

[^ma]: Egentligen $\sum F = ma$, där $a = 0$ för statiska problem.



Eftersom vi är intresserade av spänningen (och krafterna) inne i stången så snittar vi upp den och inför snittkrafter. För denna uppgiften räcker det med ett snitt per stångdel eftersom arean är konstant, och det finns inte heller några (yttre) krafter på stångdelarna.

@@note @@title Tips @@ @@content
En minnesregel för att veta var man ska göra snitt är att göra snitt ett nytt "när det händer något nytt". I denna uppgiften, om vi utgår från vänster, gör vi första snittet i den vänstra stångdelen. När vi sedan rör oss åt höger så ser vi att den första nya grej som händer är att arean ändras och dessutom att det tillkommer en extra yttre kraft. Alltså så måste vi göra ett nytt snitt strax efter övergången till stångdelen i mitten.
@@ @@

I figuren nedan har stången snittats på tre ställen, och vi har infört tre snittkrafter; $N_1$, $N_2$, och $N_3$:
\figurenc{/assets/uppg-1.7-snitt.png}


För att räkna ut snittkrafterna ställer vi upp jämviktsekvationen för varje uppdelad bit:

Del 1:
$$
\rightarrow: \ 3P + N_1 = 0 \qquad \Rightarrow \qquad N_1 = -3P.
$$

Del 2:
$$
\rightarrow: \ -N_1 - P + N_2 = 0 \qquad \Rightarrow \qquad N_2 = P + N_1 = -2P.
$$

Del 3:
$$
\rightarrow: \ -N_3 + 2P = 0 \qquad \Rightarrow N_3 = 2P.
$$

Det sista steget är att räkna ut spänningen i de tre delarna, vilket är trivialt när vi nu vet både kraft och area:
$$
\sigma_1 = \frac{N_1}{A_1} = \SI{-80}{MPa},
$$
$$
\sigma_2 = \frac{N_2}{A_2} = \SI{-40}{MPa},
$$
$$
\sigma_3 = \frac{N_3}{A_3} = \SI{80}{MPa}.
$$


---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
