function main()
    s = parsestring()
    n = parseint()

    for _ ∈ 1:n
        l, r = parseints()

        s = s[begin:l-1] * reverse(s[l:r]) * s[r+1:end]
    end

    println(s)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
