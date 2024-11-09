function main()
    n, k = parseints()
    s = parsestring()

    result = 0

    for elem ∈ rle(s)
        if elem[begin] == 'O'
            result += elem[end] ÷ k
        end
    end

    println(result)
end

function rle(s::String)
    arr = []
    n = length(s)

    i = 1
    while i < n + 1
        j = i

        while j < n + 1 && s[i] == s[j]
            j += 1
        end

        push!(arr, (s[i], j - i))
        i = j
    end

    return arr::Vector{}
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
