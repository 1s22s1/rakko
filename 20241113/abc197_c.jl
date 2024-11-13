function main()
    n = parseint()
    an = parseints()

    result = typemax(Int)

    # for pattern ∈ bitsearch(collect(1:n-1))
    for pattern ∈ [[]]
        @show pattern

        value1 = 0
        for i ∈ 1:n
            value2 |= an[i]
            if i ∈ pattern
                value1 ⊻= value2
            end

            @show value2
        end

        result = min(result, value1)
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
