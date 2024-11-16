using Printf

function main()
    n = parseint()
    arr = []

    for _ ∈ 1:n
        s = split(parsestring(), "") |> sort |> join |> hash

        push!(arr, s)
    end

    dict = tally(arr)

    result = 0
    for (_, v) ∈ dict
        result += binomial(v, 2)
    end

    println(result)
end

function tally(array::Union{Vector{Any},String})
    dict = Dict()

    for e ∈ array
        dict[e] = get(dict, e, 0) + 1
    end

    return dict
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
