
## Install InstantiateFromURL
] add InstantiateFromURL

## Setup quantecon packages 
using InstantiateFromURL
# optionally add arguments to force installation: instantiate = true, precompile = true
github_project("QuantEcon/quantecon-notebooks-julia", version = "0.8.0")

##
using LinearAlgebra, Statistics, Plots

##
using Plots
gr(fmt=:png); # setting for easier display in jupyter notebooks
n = 100
ϵ = randn(n)
plot(1:n, ϵ)


## bad style 
n = 100 
ϵ = zeros(n)
for i in 1:n
    ϵ[i] = randn()
end

## better style 
n = 100 
ϵ = zeros(n)
for i in eachindex(ϵ)
    ϵ[i] = randn()
end

ϵ