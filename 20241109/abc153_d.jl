function main()
    h = parseint()

    result = f(h)

    println(result)
end

function f(h)
    if h == 1
        return 1
    end

    return 1 + 2f(floor(h / 2) |> Int)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
