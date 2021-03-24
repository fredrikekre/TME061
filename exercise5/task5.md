@def title = "Räkneövning 5"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 13)

## Räkneövning 5 - Uppgift 5.26 från [^moller]

Ett slutet tunnväggigt rör belastas av ett inre övertryck $p$ och ett vridande moment $M_v = \pi pa^3$, se figur.

a) Bestäm spänningstillståndet; rita Mohrs spänningscirkel; beräkna huvudspänningarna.

b) Beräkna effektivspänning enligt Tresca och enligt von Mise.

\figurenc{/assets/uppg-8.15.png}

### Lösning

Denna uppgift är identisk med 8.14 förutom att det också tillkommer en normalspänning längs med röret pga att behållaren är sluten. Ångpanneformlerna ger då

$$
\sigma_x = \frac{pa}{2h}
$$

och sedan tidigare pga tryck och vridning

$$
\sigma_\theta = \frac{pa}{h},
$$
$$
\tau_{\theta x} = \frac{M_v}{2\pi a^2 h} = \frac{\pi pa^3}{2\pi a^2 h} = \frac{pa}{2h}.
$$

Övriga spänningar är 0. Vi kan då rita Mohrs spänningscirkel

\figurenc{/assets/uppg-8.15-mohr.png}

Huvudspänningar kan räknas ut enligt föregående uppgift genom att ta fram cirkelns mittpunkt:

$$
\sigma_{\mathrm{avg}} = \frac{\sigma_x + \sigma_\theta}{2} = \frac{3pa}{4h}
$$

och cirkelns radie $R$:

$$
R = \frac{1}{2}\sqrt{(\sigma_\theta - \sigma_x)^2 + (-\tau_{\theta x} - \tau_{\theta x})^2} = \frac{\sqrt{5}pa}{4h}
$$

Huvudspänningarna fås då som

$$
\sigma_{1,2} = \sigma_{\mathrm{avg}} \pm R \quad \Rightarrow \quad \sigma_1 = \frac{pa}{4h}(3 + \sqrt{5}),\ \sigma_2 = \frac{pa}{4h}(3 - \sqrt{5})
$$

Den tredje huvudspänningen för plant spänningstillstånd är 0, så efter att ha numrerat dem i storleksordning har vi

$$
\sigma_1 = \frac{pa}{4h}(3 + \sqrt{5}),\ \sigma_2 = \frac{pa}{4h}(3 - \sqrt{5}),\ \sigma_3 = 0
$$

Effektivspänningar fås nu enligt Trescas formulering:

$$
\sigma_e^\mathrm{Tresca} = \sigma_1 - \sigma_3 = \frac{pa}{4h}(3 + \sqrt{5})
$$

och enligt von Mises formulering:

$$
\sigma_e^\mathrm{vonMise} = \frac{1}{\sqrt{2}} \sqrt{(\sigma_1-\sigma_2)^2 + (\sigma_1-\sigma_3)^2 + (\sigma_2-\sigma_3)^2} = \frac{\sqrt{6}pa}{2h}
$$

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
