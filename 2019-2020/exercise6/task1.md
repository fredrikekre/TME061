@def title = "Räkneövning 6"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 18)

## Räkneövning 6 - Uppgift 6.10 från [^moller]

\figurenc{/assets/uppg-6.10.png}

En balk med längden $3L$ är inspänd i sin vänstra ände samt understödd av en rullagring på avståndet $2L$ från inspänningen; strukturens böjstyvhet varierar enligt figuren.

**a)** Använd elementarfall för att beräkna balkändens förskjutning $\delta_C$ pga. den utbredda lasten med kraftresultant $Q$ nedåt.

**b)** Använd elementarfall för att beräkna balkändens förskjutning $\delta_C$ pga. den koncentrerade lasten $P$.

**c)** Beräkna balkändens förskjutning $\delta_C$ då balken belastas av både $P$ och $Q$.

### Lösning

@@note @@title Formelsamling @@ @@content
För nedanstående uppgift refereras till [denna formelsamling](/assets/formelsamling.pdf)[^ekh]. Liknande tabeller finns i andra formelsamlingar för hållfasthetslära.
@@ @@

**a)** När balken endast påverkas av $Q$ kommer den sista tredjedelen inte att deformeras, dvs den kommer endast att rotera. Vi kan då räkna ut $\delta_C$ genom att ta reda på balkens vinkel vid det högra stödet, och multiplicera med längden på den utstickande biten, dvs. $\delta_C^Q = \theta^Q L$, se figur.

\figurenc{/assets/uppg-6.10-a.png}


För att räkna ut $\theta^Q$ använder vi elementarfall 6.5 från [^ekh], vilket gäller för en balk som är fast inspänd i ena änden och fritt upplagd i den andra. Enligt formelsamlingen får vi följande uttryck för vinkeln:

$$
"m_1 = \frac{W_1 L^3}{48EI} "
$$

@@note @@title Notation @@ @@content
Utryck skrivna inom "" är uttryck från formelsamling, och måste översättas till våran balk. Tex blir $EI$ $2EI$ eftersom vår balk har dubbel styvhet, $L$ blir $2L$ eftersom vår balk har längd $2L$ etc.
@@ @@

Vi översätter detta till vår balk: $m_1 = \theta^Q$, $W_1 = \frac{Q}{2L}$, $L = 2L$ och $EI = 2EI$ vilket ger:

$$
\theta^Q = \frac{\frac{Q}{2L} (2L)^3}{48 (2EI)} = \frac{Q L^2}{24 EI}
$$

Utböjningen fås nu som

$$
\delta_C^Q = \theta^Q L = \frac{Q L^3}{24 EI}
$$

**b)** När balken endast påverkas av $P$ kommer dels den högra delen att deformeras (till skillnad från föregående deluppgift), men vi kommer fortfarande att få en vinkel vid det högra stödet eftersom som $P$ även kommer resultera i att den vänstra delen av balken böjs. Vi kan dela upp problemet i två bitar: *i)* deformation pga $P$ på höger bit och *ii)* deformation pga vinkel vid högra stödet pga $P$.

\figurenc{/assets/uppg-6.10-b.png}

För att räkna ut *i)* använder vi elementarfall 6.4 från [^ekh], dvs vi studerar den högra delen som att den vore fast inspänd vid det högra stödet. Formelsamlingen ger:

$$
"p_1 = \frac{P_1 L^3}{3EI}"
$$
vilket vi översätter till vårt problem: $p_1 = -\delta^{P,i}_C$, $P_1 = P$, $L = L$, $EI=EI$, och får ut

$$
-\delta^{P,i}_C = \frac{P L^3}{3EI} \quad \Rightarrow \quad \delta^{P,i}_C = -\frac{P L^3}{3EI}
$$

För att räkna ut $\delta^{P,ii}_C$ vill vi ta reda på vinkeln vid det högra stödet precis som i föregående deluppgift. Denna gången orsakas vinkeln av ett moment vid stödet, ett moment som kommer från $P$. Vi kan använda elementarfall 6.4 från [^ekh] igen för att ta reda på momentet vid stödet:

$$
"M_1 = P_1 L" \quad \Rightarrow \quad M = P L.
$$

Vi kan nu studera den vänstra delen av balken mha elementarfall 6.5 från [^ekh] med ett pålagt moment $M = PL$ vid det fritt upplagda stödet. Formelsamlingen ger vinkeln som

$$
"m_1 = \frac{M_1 L}{4EI}"
$$
vilket översätts enligt: $M_1 = \theta_C^P$, $M_1 = -M = -PL$, $L = 2L$, $EI = 2EI$ och ger
$$
\theta_C^P = \frac{(-PL) (2L)}{4 (2EI)} = -\frac{P L^2}{4 EI}.
$$

Precis som i föregående deluppgift fås då

$$
\delta^{P,ii}_C = \theta_C^P L = -\frac{P L^3}{4 EI},
$$

och den totala deformationen fås från summan:

$$
\delta^{P}_C = \delta^{P,i}_C + \delta^{P,ii}_C = -\frac{P L^3}{3EI} - \frac{P L^3}{4 EI} = -\frac{7 P L^3}{12 EI}.
$$


**c)** Eftersom problemet är helt linjärt (små deformationer och linjärt elastiskt material) använder vi superposition och får ut

$$
\delta_C = \delta_C^Q + \delta_C^P = \frac{Q L^3}{24 EI} + -\frac{7 P L^3}{12 EI} = \frac{L^3}{24 EI}(Q - 14P).
$$


---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
[^ekh]: M. Ekh, P. Hansbo och J. Brouzoulis *Formelsamling i hållfasthetslära*. [PDF](/assets/formelsamling.pdf)
