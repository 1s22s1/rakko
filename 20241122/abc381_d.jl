using Printf

function main()
    n = parseint()
    an = parseints()

    arr1 = rle(an)
    arr1_length = length(arr1)
    result = 0

    arr2 = []

    i = 1
    while i < arr1_length + 1
        j = i

        while j < arr1_length + 1 && arr1[j][2] ≠ 2
            j += 1
        end

        k = j
        s = Set([])

        while k < arr1_length + 1 && arr1[k][2] == 2 && arr1[k][1] ∉ s
            push!(s, arr1[k][1])
            k += 1
        end

        push!(arr2, k - j)
        j += 1
        i = j
    end

    result = 2maximum(arr2)
    println(result)
end


function rle(s)
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

    return arr
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
