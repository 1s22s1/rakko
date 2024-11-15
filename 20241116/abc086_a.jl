function main()
    a, b = parseints()

    result = iseven(a * b)

    if result
        println("Even")
    else
        println("Odd")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
