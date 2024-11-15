function main()
    n, a, b = parseints()

    result = 0

    for i ∈ 1:n
        v = parse.(Int, split(string(i), "")) |> sum

        if a ≤ v ≤ b
            result += i
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
