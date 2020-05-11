@def title = "Räkneövning 3"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 6)

## Räkneövning 3 - Uppgift 8.14 från [^moller]

Ett öppet tunnväggigt rör belastas av ett inre övertryck $p$ och ett vridande moment $M_v = \pi pa^3$, se figur.

a) Bestäm spänningstillståndet; rita Mohrs spänningscirkel; beräkna huvudspänningarna.

b) Beräkna effektivspänning enligt Tresca och enligt von Mise.

\figurenc{/assets/uppg-8.14.png}

### Lösning

För cirkulära strukturer används ofta ett cirkulärt koordinatsystem. Vi definierar $x$ att vara centerlinjen genom röret, och $\theta$ att vara koordinaten runt $x$. Formlerna för cylindriska behållare (även kallade ångpanneformlerna) ger då spänningen pga de intre trycket $\sigma_\theta$:

$$
\sigma_\theta = \frac{pa}{h},
$$

där $p$ är de inre trycket, $a$ radien och $h$ behållarens tjocklek. Cylindern är också utsatt för ett vridande moment $M_v$ vilket resulterar i en (vrid)skjuvspänning $\tau_{\theta x}$:

$$
\tau_{\theta x} = \frac{M_v}{2\pi a^2 h} = \frac{\pi pa^3}{2\pi a^2 h} = \frac{pa}{2h}.
$$

Övriga spänningar är 0. Vi kan då rita Mohrs spänningscirkel

\figurenc{/assets/uppg-8.14-mohr.png}

Huvudspänningar kan räknas ut enligt föregående uppgift genom att ta fram cirkelns mittpunkt:

$$
\sigma_{\mathrm{avg}} = \frac{\sigma_x + \sigma_\theta}{2} = \frac{pa}{2h}
$$

och cirkelns radie $R$:

$$
R = \frac{1}{2}\sqrt{(\sigma_\theta - \sigma_x)^2 + (-\tau_{\theta x} - \tau_{\theta x})^2} = \frac{\sqrt{2}pa}{2h}
$$

Huvudspänningarna fås då som

$$
\sigma_{1,2} = \sigma_{\mathrm{avg}} \pm R \quad \Rightarrow \quad \sigma_1 = \frac{pa}{2h}(1 + \sqrt{2}),\ \sigma_2 = \frac{pa}{2h}(1 - \sqrt{2})
$$

Den tredje huvudspänningen för plant spänningstillstånd är 0, så efter att ha numrerad om dem i storleksordning har vi

$$
\sigma_1 = \frac{pa}{2h}(1 + \sqrt{2}),\ \sigma_2 = 0,\ \sigma_3 = \frac{pa}{2h}(1 - \sqrt{2})
$$


När huvudspänningarna är beräknade är det enkelt att ta fram effektivspänningar. Trescas formulering är differensen mellan största och minsta huvudspänning:

$$
\sigma_e^\mathrm{Tresca} = \sigma_1 - \sigma_3 = \frac{pa}{2h}(1 + \sqrt{2}) - \frac{pa}{2h}(1 - \sqrt{2}) = \frac{\sqrt{2}pa}{h}
$$

och enligt von Mise

$$
\sigma_e^\mathrm{vonMise} = \frac{1}{\sqrt{2}} \sqrt{(\sigma_1-\sigma_2)^2 + (\sigma_1-\sigma_3)^2 + (\sigma_2-\sigma_3)^2} = \frac{\sqrt{7}pa}{2h}
$$

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
