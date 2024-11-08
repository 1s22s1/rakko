function main()
    h = parseint()

    result = 1

    while true
        if h < 2^result
            println(2^result - 1)

            return
        end

        result += 1
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
