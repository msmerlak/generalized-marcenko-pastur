using Distributions
using StatsBase
using LinearAlgebra

function binary(dist_sigma = Uniform(0, 1))
    ξ = rand([-1, 1], (T, N))
    σ = rand(dist_sigma, T)
    # X = ξ .* σ
    return X
end

function binary_spectrum(dist_sigma = Uniform(0, 1))
    X = binary(dist_sigma)
    return eigvals(Symmetric(corspearman(X)))
end

N = 100
T = 200


@profview binary_spectrum()