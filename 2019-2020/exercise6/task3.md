@def title = "Räkneövning 6"
@def hascode = false
@def hasmath = true
@def date = Date(2020, 5, 18)

## Räkneövning 6 - Uppgift 7.3 från [^moller]

En fritt upplagd balk med längden $2L$ och böjstyvheten $EI$ är stöttad på mitten. En mycket böjstyv ($EI = \infty$) pelare med höjden $H$ är stelt fäst vid balkens mittpunkt. Bestäm kritisk last $P_\mathrm{kr}$.

\figurenc{/assets/uppg-7.3.png}

### Lösning

Vi tänker oss att den stela pelaren har en liten vinkel. Kraften $P$ kommer då ge ett moment $M = PH\theta$ där $\theta$ är vinkeln. Detta moment måste balanseras upp av balken enligt figur.

\figurenc{/assets/uppg-7.3-jmv.png}

Från elementarfall 6.3 i [^ekh] får vi ett samband mellan momenten $M_1$, $M_2$ och vinkeln $\theta$:

$$
"m_2 = \frac{M_2 L}{3EI}" \Rightarrow \{m_2 = \theta,\ M_2 = M_1\} \Rightarrow \theta = \frac{M_1 L}{3EI} \quad \Rightarrow \quad M_1 = \frac{3EI\theta}{L}
$$

$$
"m_1 = \frac{M_1 L}{3EI}" \Rightarrow \{m_1 = -\theta,\ M_1 = M_2\} \Rightarrow \theta = -\frac{M_2 L}{3EI} \quad \Rightarrow \quad M_2 = -\frac{3EI\theta}{L}
$$

Vi vet att de inre momenten ska balansera det yttre momentet $M = PH\theta$:

$$
\circlearrowleft:\ M = M_1 - M_2 \quad \Rightarrow \quad PH\theta = \frac{3EI\theta}{L} - \left(-\frac{3EI\theta}{L}\right)
$$
vilket ger oss
$$
P = \frac{6EI}{HL}.
$$


---

## Referenser

[^moller]: P. Möller, *Exempelsamling i Hållfasthetslära*
[^extra]: *Extra övningsexempel i hållfasthetslära för TME061*
[^kth]: B. Sundström, *Handbok och formelsamling i Hållfasthetslära*
