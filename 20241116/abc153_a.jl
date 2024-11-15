function main()
    h, a = parseints()

    result, r = divrem(h, a)

    if r ≠ 0
        result += 1
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
