using Printf

function main()
    n = parsestring()

    dict = tally(n)

    if get(dict, '1', 0) == 1 &&
       get(dict, '2', 0) == 2 &&
       get(dict, '3', 0) == 3 &&
       length(dict) == 3
        println("Yes")
    else
        println("No")
    end
end

function tally(array::Union{Vector{Int},String})
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
