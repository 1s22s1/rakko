function main()
    n = parsestring()

    println("$(n[2])$(n[3])$(n[1]) $(n[3])$(n[1])$(n[2])")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
