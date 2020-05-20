@def title = "Räkneövning 5"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 13)

## Räkneövning 5 - Uppgift 5.17 från [^moller]

Bestäm yttröghetsmomenten $I_y$ och $I_z$ för ett rektangulärt tvärsnitt innehållande ett hål med radien $R = \SI{2}{cm}$; övriga mått enligt figuren.

\figurenc{/assets/uppg-5.17.png}

### Lösning

Först tar vi reda på var tyngdpunkten ligger. Tvärsnittet är symmetrisk kring $y$-axeln, så det räcker att ta reda på var tyngdpunkten ligger i $y$-led. Tyngdpunkten räknas ut enligt:

$$
\bar{y} = \frac{A_1 y_1 + A_2 y_2}{A_1 + A_2},
$$
där $A_1$, $A_2$ är rektangelns och cirkelns area och $y_1$, $y_2$ avståndet mellan rektangelns/cirkelns tyngdpunkt och tvärsnittets vänstra kant. Eftersom cirkeln är ett hål kan vi anse att den har "negativ area", dvs $A_1 = \SI{60}{cm^2},\ A_2 = -\SI{4\pi}{cm^2},\ y_1 = \SI{5}{cm},\ y_2 = \SI{3}{cm}$. Vi får ut: $\bar{y} \approx \SI{5.53}{cm}$.

Vi kan nu använda Steiners sats för att räkna ut $I_y$ och $I_z$. För en axel $\lambda$ ges yttröghetsmomentet för ett sammansatt snitt som

$$
I_\lambda = \sum_i \bar{I}_{\lambda, i} + A_i d_{\lambda,i}^2,
$$

där $\bar{I}_{\lambda, i}$ är yttröghetsmomentet runt axeln för delens lokala koordinatsystem (origo i tyndpunkten) och $d_\lambda$ det (vertikala) avståndet mellan delens tyngdpunkt och den globala tyngdpunkten. Eftersom cirkeln är utskuren så räknar vi den som ett negativt bidrag. $\bar{I}_y$ och $\bar{I}_z$ för rektangeln och cirkeln fås ur formelsamling:

$$
\bar{I}_{y,\mathrm{rekt}} = \frac{BH^3}{12} = \SI{180}{cm^4}, \quad \bar{I}_{z,\mathrm{rekt}} = \frac{HB^3}{12} = \SI{500}{cm^4},
$$
där $B = \SI{10}{cm},\ H = \SI{6}{cm}$. För cirkeln:
$$
\bar{I}_{y,\mathrm{circ}} = \bar{I}_{z,\mathrm{circ}} = \frac{\pi R^4}{4} \approx \SI{12.57}{cm^4}.
$$

Avstånden till tyngdpunkten fås med hjälp av beräkningen av $\bar{y}$ ovan:

$$
d_{y,\mathrm{rekt}} = \SI{0}{cm},\ d_{z,\mathrm{rekt}} = \bar{y} - \SI{5}{cm},\ d_{y,\mathrm{circ}} = \SI{0}{cm},\ d_{z,\mathrm{circ}} = \bar{y} - \SI{3}{cm}.
$$

Svaren ges då av ekvation (2):

$$
I_y = \bar{I}_{y,\mathrm{rekt}} + A_\mathrm{rekt} d_{y,\mathrm{rekt}}^2 - \left(\bar{I}_{y,\mathrm{circ}} + A_\mathrm{circ} d_{y,\mathrm{circ}}^2\right) \approx \SI{167.43}{cm^4},
$$
$$
I_z = \bar{I}_{z,\mathrm{rekt}} + A_\mathrm{rekt} d_{z,\mathrm{rekt}}^2 - \left(\bar{I}_{z,\mathrm{circ}} + A_\mathrm{circ} d_{z,\mathrm{circ}}^2\right) = \approx \SI{423.85}{cm^4}.
$$


---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
[^kth]: B. Sundström, *Handbok och formelsamling i Hållfasthetslära*
