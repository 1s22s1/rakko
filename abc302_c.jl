using Combinatorics

function main()
    n, m = parseints()

    arr = []
    for _ ∈ 1:n
        s = split(parsestring(), "") |> sort |> join

        push!(arr, s)
    end

    sort!(arr)

    satisfy = true
    for i ∈ 1:n-1
        count = 0

        tally1 = tally(arr[i])
        tally2 = tally(arr[i+1])
        @show tally1
        @show tally2

        for (k, v) ∈ tally1
            @show k, v, get(tally2, k, 0)
            count += abs(v - get(tally2, k, 0))
        end

        if count ∉ [1, 2]
            @show arr[i], arr[i+1], count
            satisfy = false
        end
    end

    if satisfy
        println("Yes")
    else
        println("No")
    end
end

function tally(array)
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
