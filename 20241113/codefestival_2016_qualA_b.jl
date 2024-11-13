function main()
    n = parseint()
    an = parseints()

    dict = Dict()
    for i ∈ 1:n
        key = i + an[i]

        dict[key] = get(dict, key, 0) + 1
    end

    result = 0

    for (_, v) ∈ dict
        if v == 2
            result += 1
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
