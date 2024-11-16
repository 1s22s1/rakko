using Printf

function main()
    n, k = parseints()
    s = parsestring()

    arr = rle(s)
    index = []
    count = 0

    for i ∈ eachindex(arr)
        if first(arr[i]) == '1'
            count += 1

            push!(index, i)
        end

        if count == k
            break
        end
    end


    arr[index[end-1]][end] += arr[index[end]][end]
    arr[index[end]][end] = 0

    for elem ∈ arr
        print(elem[begin]^elem[end])
    end

    println("")
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

        push!(arr, [s[i], j - i])
        i = j
    end

    return arr::Vector{}
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
