function main()
    h = parseint()

    result = rec(h)

    println(result)
end

function rec(h)
    if h == 1
        return 1
    end

    return 1 + 2rec(floor(h / 2) |> Int)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
