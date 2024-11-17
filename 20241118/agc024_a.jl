using Printf

function main()
    a, b, c, k = parseints()

    if iseven(k)
        result = a - b
    else
        result = b - a
    end

    if abs(result) > 10^18
        println("Unfair")
    else
        println(result)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
