function main()
    n = parseint()
    dict = Dict()

    for i ∈ 1:n
        a = parseint()
        arr = []

        for _ ∈ 1:a
            push!(arr, parseints())
        end

        dict[i] = arr
    end

    result = 0

    for bit ∈ 0:2^n-1
        satisfy = true

        for i ∈ 1:n
            for (k, v) ∈ dict
                # In case of honest
                if bit & (1 << (k - 1)) ≠ 0
                    for statement ∈ v
                        if min(bit & (1 << (statement[begin] - 1)), 1) ≠ statement[end]
                            satisfy = false
                        end
                    end
                    # In case of not honest
                else
                    for statement ∈ v
                        if min(bit & (1 << (statement[begin] - 1)), 1) == statement[end]
                            satisfy = false
                        end
                    end
                end
            end
        end

        if satisfy
            result = max(result, count_ones(bit))
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
