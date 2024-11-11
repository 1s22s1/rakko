function main()
    h, w, k = parseints()
    c = [split(parsestring(), "") for _ ∈ 1:h]

    result = 0

    for bit ∈ 0:(1<<h)-1
        rows = []

        for i ∈ 0:h-1
            if bit & 1 << i ≠ 0
                push!(rows, i + 1)
            end
        end

        for bit ∈ 0:(1<<w)-1
            columns = []

            for i ∈ 0:w-1
                if bit & 1 << i ≠ 0
                    push!(columns, i + 1)
                end
            end

            count = 0

            for i ∈ 1:h, j ∈ 1:w
                if c[i][j] == "#" && i ∉ rows && j ∉ columns
                    count += 1
                end
            end

            if count == k
                result += 1
            end
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
