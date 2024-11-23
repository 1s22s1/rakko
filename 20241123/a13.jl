using Printf

function main()
    n, k = parseints()
    an = parseints()

    result = 0

    for i ∈ 1:n-1
        index = searchsortedlast(an, an[i] + k)

        result += index - i
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
