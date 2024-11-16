function main()
    n = parseint()
    an = sort!(parseints(), rev = true)

    result = 0

    for i ∈ 1:n
        if isodd(i)
            result += an[i]
        else
            result -= an[i]
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
