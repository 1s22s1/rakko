using Printf

function main()
    n = parseint()
    dn = [parseint() for _ ∈ 1:n]

    result = dn |> unique |> length

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
