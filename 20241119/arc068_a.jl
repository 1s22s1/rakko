using Printf

function main()
    x = parseint()

    q, r = divrem(x, 11)

    if r == 0
        result = 2q
    elseif 1 ≤ r ≤ 6
        result = 2q + 1
    else
        result = 2q + 2
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
