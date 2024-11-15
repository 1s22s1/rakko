using Primes

function main()
    n = parseint()
    an = parseints()

    result = map(x -> factor(x)[2], an) |> minimum

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
