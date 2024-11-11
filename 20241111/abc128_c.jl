function main()
    n, m = parseints()
    ksn = [parseints() for _ ∈ 1:m]
    pm = parseints()

    result = 0
    for target_switches ∈ bitsearch(collect(1:n))
        count = 0

        for i ∈ eachindex(ksn)
            target_ksn = ksn[i][begin+1:end]
            filter_switches = filter(x -> x ∈ target_switches, target_ksn)

            if length(filter_switches) % 2 == pm[i]
                count += 1
            end
        end

        if count == m
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
