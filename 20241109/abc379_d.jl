function main()
    q = parseint()

    ueki = Dict()

    for _ ∈ 1:q
        query = parseints()

        if query[begin] == 1
            ueki[0] = get(ueki, 0, 0) + 1
        elseif query[begin] == 2
        elseif query[begin] == 3
        end

        @show ueki
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
