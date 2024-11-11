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

    for honests ∈ bitsearch(collect(1:n))
        ok = true

        for (k, v) ∈ dict
            if k ∈ honests
                for arr ∈ v
                    if arr[end] == 0
                        if arr[begin] ∈ honests
                            ok = false
                        end
                    else
                        if arr[begin] ∉ honests
                            ok = false
                        end
                    end
                end
            else
                for arr ∈ v
                    if arr[end] == 0
                        if arr[begin] ∉ honests
                            ok = false
                        end
                    else
                        if arr[begin] ∈ honests
                            ok = false
                        end
                    end
                end
            end
        end

        if ok
            result = max(result, length(honests))
        end
    end

    println(result)
end

function bitsearch(array::Vector{})
    n = length(array)

    s = []
    for bit ∈ 0:(1<<n)-1
        t = []

        for i ∈ 0:n-1
            if bit & 1 << i ≠ 0
                push!(t, array[i+1])
            end
        end

        push!(s, t)
    end

    return s
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
