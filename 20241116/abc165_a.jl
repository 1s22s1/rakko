function main()
    k = parseint()
    a, b = parseints()

    result = "NG"

    for i ∈ a:b
        if i % k == 0
            result = "OK"
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
