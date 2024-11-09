function main()
    n, m = parseints()
    xm = parseints()
    am = parseints()

    if xm[end] ≠ n
        push!(xm, n)
        push!(am, 0)
    end

    @show xm
    @show am

    cur_stone = am[begin]
    for i ∈ 1:m
        distance = xm[i+1] - xm[i]

        if cur_stone < distance
            println(-1)

            return
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
