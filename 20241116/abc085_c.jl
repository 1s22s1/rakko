using Printf

function main()
    n, y = parseints()

    for i ∈ 0:n, j ∈ 0:n
        k = n - i - j

        if k ≥ 0
            if 10000i + 5000j + 1000k == y
                println("$(i) $(j) $(k)")

                return
            end
        end
    end

    println("-1 -1 -1")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
