function main()
    n, m = parseints()
    ks = [parseints() for _ ∈ 1:m]
    pm = parseints()

    result = 0

    for pattern ∈ bitsearch(collect(1:n))
        on_count = 0

        for i ∈ eachindex(ks)
            switch_pattern = ks[i][begin+1:end]

            if length(pattern ∩ switch_pattern) % 2 == pm[i]
                on_count += 1
            end
        end

        if on_count == m
            result += 1
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
