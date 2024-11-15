using Combinatorics

function main()
    n, m = parseints()

    arr = []
    for _ ∈ 1:n
        s = split(parsestring(), "") |> sort |> join

        push!(arr, s)
    end

    sort!(arr)

    satisfy = false
    for pattern ∈ permutations(arr, n)
        counts = []

        for i ∈ 1:n-1
            count = 0
            for j ∈ 1:m
                if pattern[i][j] ≠ pattern[i+1][j]
                    count += 1
                end
            end

            push!(counts, count)
        end

        @show counts
    end

    if satisfy
        println("Yes")
    else
        println("No")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
