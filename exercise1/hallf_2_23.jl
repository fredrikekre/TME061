#!/usr/bin/env julia

# Load symbolics library
using Symbolics

# Define variables
@variables E L A Q E δ[1:3] a

# Constituve relations (Hooke's law)
ϵ = δ / L
σ = E * ϵ
N = σ * A

# Equations
eqs = [
    N[1] + N[2] + N[3] ~ Q,                # Force equilibrium
    N[2] * a + N[3] * 2a ~ Q * 4a/3,       # Moment equilibrium
    (δ[3] - δ[1]) / 2a ~ (δ[2] - δ[1]) / a # Compatibility
]

# Solve for the δ's
δs = Symbolics.solve_for(eqs, δ)

# Insert solution into expressions for N
N = simplify.(substitute.(N, (Dict(δ .=> δs),)))


# Define variables
@variables σʸ N[1:3]

# Equations
eqs = [
    N[1] + N[2] + N[3] ~ Q,                 # Force equilibrium
    N[2] * a + N[3] * 2a ~ Q * 4a/3,        # Moment equilibrium
    N[3] ~ σʸ * A,                          # Perfect plasticity
    N[2] ~ σʸ * A,                          # Perfect plasticity
]

# Solve for forces N and area A
sol = Symbolics.solve_for(eqs, [N; A])
