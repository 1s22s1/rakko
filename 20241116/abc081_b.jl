function main()
    n = parseint()
    an = parseints()

    result = 0

    while true
        if all(x -> iseven(x), an)
            result += 1

            an = an .÷ 2
        else
            break
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()