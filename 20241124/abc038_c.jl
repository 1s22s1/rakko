using Printf

function main()
    n = parseint()
    an = parseints()

    result = 0
    r = 1

    for l ∈ 1:n
        if

        while r < n && an[r+1] ≥ an[r]
            r += 1
        end

        @show l, r
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
