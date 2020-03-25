@def title = "Räkneövning 1"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 3, 25)

## Räkneövning 1 - Uppgift 2.23 från [^moller]

En triangelformad, jämntjock, plåtskiva med tyngden $Q$ ska hängas upp i 3 lika likadana trådar med tvärsnittsarean $A$. Trådarna tillverkas i ett lineärt elastiskt idealplastisk material vars $\sigma\varepsilon$-samband visas i figuren. Bestäm den minsta tvärsnittsarea $A$ som inte leder till stora deformationer (helt förändrad geometri hos anordningen).
\figurenc{/assets/uppg-2.23.png}

### Lösning

För att det inte ska bli några stora kvarstående deformationer får inte hela strukturen plasticera eftersom den då kommer att deformeras permanent. Precis som i uppgift [Uppgift 2.3](/exercise1/task3) kommer vi behöva använda jämvikt-, material-, och kompatibilitetssamband.

1. **Jämviktssamband**

   För att ställa upp jämviktssambandet så frilägger i skivan, snittar av linorna, och inför linkrafter $N_1$, $N_2$ och $N_3$ enligt figur.

   För ett två-dimensionellt problem kan vi generellt ställa upp 3 jämviktsekvationer: vertikal och horisontell kraftjämvikt, och dessutom en momentjämvikt. I denna uppgiften finns dock inga horisontella krafter så vi skippar den jämvikten. Vertikal kraftjämvikt:
   $$
   \uparrow:\ N_1 + N_2 + N_3 - Q = 0 \qquad \Rightarrow \qquad N_1 + N_2 + N_3 = Q.
   $$
   Momenjämvikt kring triangelns räta hörn (summera kraft gånger hävarm för alla krafter):
   $$
   \circlearrowleft:\ -N_1 2a - N_2 a - N_3 0 + Q \frac{1}{3}(2a) = 0 \qquad \Rightarrow \qquad 2 N_1 + N_2 = \frac{2Q}{3}
   $$
   @@note @@title Notering @@ @@content
   Tyngdpunkten för en triangel, och alltså punkten där $Q$ verkar, är $\frac{1}{3}$ av längden om man utgår från basen, dvs $\frac{1}{3}(2a)$.
   @@ @@

   Dessa två ekvationer räcker inte för att lösa systemet eftersom vi har tre obekanta linkrafter. Därför måste vi komplettera med material- och kompatibilitetssamband.

2. **Materialsamband**
   Eftersom vi befinner oss i den elastiska regionen så är materialsambandet precis som i [Uppgift 2.3](/exercise1/task3) för varje lina, dvs:
   $$
   \sigma_1 = \frac{N_1}{A} = E\frac{\delta_1}{L} \qquad \Rightarrow \qquad \delta_1 = \frac{N_1L}{EA},
   $$
   $$
   \sigma_2 = \frac{N_2}{A} = E\frac{\delta_2}{L} \qquad \Rightarrow \qquad \delta_2 = \frac{N_2L}{EA},
   $$
   $$
   \sigma_3 = \frac{N_3}{A} = E\frac{\delta_3}{L} \qquad \Rightarrow \qquad \delta_3 = \frac{N_3L}{EA}.
   $$
   där $\delta_1$, $\delta_2$, $\delta_3$ är linornas förlängningar

3. **Kompatibilitetssamband**
   För att få fram ett kompatibilitetssamband, dvs ett samband som kopplar ihop $\delta_1$, $\delta_2$ och $\delta_3$ förenklar det ofta om vi ritar en deformerad figur.
   \figurenc{/assets/uppg-2.23-def.png}

   Från figuren ovan kan vi använda likformighet för den blå streckade och den röda triangeln. Vi ser då att
   $$
   \frac{\delta_3 - \delta_1}{2a} = \frac{\delta_2 - \delta_1}{a} \qquad \Rightarrow \qquad \delta_1 = 2\delta_2 - \delta_3.
   $$

Med sambanded ovan har vi 6 ekvationer, och 6 obekanta (3 linkrafter, 3 linförlängningar), så systemet är lösbart. Vi kombinerar ekv. (3)-(5) med ekv. (6):
$$
\frac{N_1L}{EA} = 2\frac{N_2L}{EA} - \frac{N_3L}{EA} \qquad \Rightarrow \qquad N_1 - 2N_2 + N_3 = 0.
$$

Ekv. (1), (2) och (7) ger oss nu stångkrafterna. Subtrahera ekv. (7) från (1) vilket ger $N_2$:
$$
3N_2 = Q \qquad \Rightarrow \qquad N_2 = \frac{Q}{3}.
$$
Ekv. (2) ger oss $N_1$:
$$
2 N_1 + \frac{Q}{3} = \frac{2Q}{3} \qquad \Rightarrow \qquad N_1 = \frac{Q}{6},
$$
och ekv. (1) ger oss $N_3$:
$$
\frac{Q}{6} + \frac{Q}{3} + N_3 = Q \qquad \Rightarrow \qquad N_3 = \frac{Q}{2}.
$$

Eftersom alla tre linor har samma area kommer den linan med högst normalkraft att också ha högst spänning, dvs lina 3 kommer plasticera först. När lina 3 plasticerat kommer den att ha en konstant spänning $\sigma_s$. Lina 1 och 2 kommer dock fortfarande att hålla upp systemet, så det går att fortsätta belastningen tills nästa lina plasticerar. När den också har plasticerat kollapsar systemet eftersom att en ensam lina inte kan hålla systemet uppe.

Jämviktsekvationerna gäller fortfarande, men materialsambandet för lina 3 har ändrats. Vi har nu
$$
\sigma_3 = \frac{N_3}{A} = \sigma_\mathrm{s} \qquad \Rightarrow \qquad N_3 = \sigma_\mathrm{s} A.
$$
Detta samband, tillsammans med ekv. (1) och (2) ger oss ett nytt system för att lösa ut $N_1$ och $N_2$. Subtrahera ekv. (2) från ekv. (1), vilket ger:
$$
-N_1 + N_3 = \frac{Q}{3} \qquad \Rightarrow \qquad N_1 = N_3 - \frac{Q}{3} = \sigma_\mathrm{s} A - \frac{Q}{3}.
$$
Ekv. (1) ger nu $N_2$:
$$
\sigma_\mathrm{s} A - \frac{Q}{3} + N_2 + \sigma_\mathrm{s} A = Q \qquad \Rightarrow \qquad N_2 = \frac{4Q}{3} -2\sigma_\mathrm{s} A
$$

Vi vet sen tidigare att $N_2 > N_1$ så lina 2 kommer att plasticera. Vi sätter upp sambandet där lina 2 precis uppnår flytspänningen vilket ger oss den minsta arena $A$:
$$
N_2 = \frac{4Q}{3} -2\sigma_\mathrm{s} A = \sigma_\mathrm{s}A \qquad \Rightarrow \qquad A = \frac{4Q}{9\sigma_\mathrm{s}}.
$$


---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
