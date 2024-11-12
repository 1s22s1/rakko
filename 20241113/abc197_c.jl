function main()
    n = parseint()
    an = parseints()

    result = typemax(Int)

    for patterns ∈ bitsearch(collect(1:n-1))
        splited_arr = []
        arr = []
        for i ∈ eachindex(an)
            # if i ∉
            @show an[i]
        end

        @show patterns, splited_arr
    end


    # println(result)
end

function bitsearch(array::Vector{})
    n = length(array)

    s = []
    for bit ∈ 1:(1<<n)-1
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
