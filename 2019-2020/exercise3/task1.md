@def title = "Räkneövning 3"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 6)

## Räkneövning 3 - Uppgift 8.12 från [^moller]

I en punkt råder plant spänningstillstånd med spänningar $\sigma_x = \SI{9}{MPa}$, $\sigma_y = \SI{3}{MPa}$ och $\tau_{xy} = 3\sqrt{3}\SI{}{MPa}$. Rita Mohrs spänningscirkel och bestäm huvudspänningarna till storlek och riktning.

### Lösning

Vi börjar med att rita upp Mohrs cirkel. Det gör vi genom att först rita in två punkter: $A$ med koordinat $(\sigma_y, \tau_{xy}) = (\SI{3}{MPa}, 3\sqrt{3}\SI{}{MPa})$ och $B$ med koordinat $(\sigma_x, -\tau_{xy}) = (\SI{9}{MPa}, -3\sqrt{3}\SI{}{MPa})$. Den räta linjen mellan dess punkter utgör diametern på Mohrs cirkel.

\figurenc{/assets/uppg-8.12-mohr.png}

Från figuren får vi ut medelspänning (punkt $C$) och minsta (punkt $C$) och största (punkt $D$) huvudspänning. Koordinaterna för dessa kan enkelt räknas ut. $C$ är ligger på $x$-axeln, och dess $x$-koordinat är medelvärden av punkterna $A$ och $B$:

$$
C:\ (\frac{\sigma_x + \sigma_y}{2}, 0) = (\SI{6}{MPa}, \SI{0}{MPa})
$$

Vi kan sen räkna ut radien för cirkeln, dvs halva avståndet mellan $A$ och $B$:
$$
R = \frac{1}{2} \sqrt{(\sigma_y - \sigma_x)^2 + (\tau_{xy} - (-\tau_{xy}))^2} = \SI{6}{MPa}
$$
Med radien och punkt $C$ är det lätt att räkna ut $D$ och $E$:

$$
D:\ (C_x - R, 0) = (\SI{0}{MPa}, \SI{0}{MPa})
$$
$$
E:\ (C_x + R, 0) = (\SI{12}{MPa}, \SI{0}{MPa})
$$

Vilket alltså ger två huvudspänningar: $\SI{0}{MPa}$ och $\SI{12}{MPa}$.

Riktningen kan räknas ut som halva vinklen mellan linjen mellan $A$ och $B$ och $x$-axeln. Dvs

$$
\tan 2\alpha = \frac{B_y}{B_x - C_x} \quad \Rightarrow \quad \alpha = \frac{1}{2}\tan^{-1}(\frac{B_y}{B_x - C_x}) \approx 30^\circ
$$

---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
