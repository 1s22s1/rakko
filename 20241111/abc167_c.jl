function main()
    n, m, x = parseints()
    arr = [parseints() for _ ∈ 1:n]

    result = typemax(Int)

    for bit ∈ 1:(1<<n)-1
        s = []

        for i ∈ 0:n-1
            if bit & 1 << i ≠ 0
                push!(s, arr[i+1])
            end
        end

        total = sum(s)

        if all(a -> a ≥ x, total[begin+1:end])
            result = min(result, total[begin])
        end
    end

    if result == typemax(Int)
        println(-1)
    else
        println(result)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
