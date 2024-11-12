function main()
    s = split(parsestring(), "")
    n = length(s)

    result = 0

    for pattern ∈ bitsearch(collect(1:n-1))
        code_string = ""

        for i ∈ 1:n
            code_string *= s[i]

            if i ∈ pattern
                code_string *= "+"
            end
        end

        result += eval(Meta.parse(code_string))
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
