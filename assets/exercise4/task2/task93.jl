# This file was generated, do not modify it. # hide
using Symbolics

# Variabler
@variables r A₁ A₂ a b E ν pᵢ

# Allmän lösning
u = A₁ * r + A₂ / r

# Töjningar
D = Differential(r)
εr = D(u)
εφ = u / r

# Spänning
σr = E / (1 - ν^2) * (εr + ν * εφ)
σr = expand_derivatives(E / (1 - ν^2) * (εr + ν * εφ))

# Ekv. system för integrations konstanter
eqs = [
    substitute(u, Dict(r => b)) ~ 0,
    substitute(σr, Dict(r => a)) ~ -pᵢ
]

X = Symbolics.solve_for(eqs, [A₁, A₂])

# Tryck vid ytterkant
py = -substitute(σr, Dict(r => b, A₁ => X[1], A₂ => X[2]))