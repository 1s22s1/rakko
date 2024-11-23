using Printf

function main()
    n, x = parseints()
    an = parseints()

    println(searchsortedfirst(an, x))
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
