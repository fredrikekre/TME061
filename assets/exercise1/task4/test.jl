# This file was generated, do not modify it. # hide
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
Symbolics.solve_for(eqs, [N; A])