function main()
    n = parseint()
    an = parseints()

    result = 0

    for i ∈ 1:n
        if i == an[an[i]]
            result += 1
        end
    end

    result ÷= 2

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
