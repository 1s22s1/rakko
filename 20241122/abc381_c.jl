using Printf

function main()
    n = parseint()
    s = parsestring()

    result = 1

    arr = rle(s)

    for i ∈ eachindex(arr)
        if arr[i][1] == '/' && arr[i][2] == 1 && i - 1 ≥ 1 && i + 1 ≤ length(arr)
            if arr[i-1][1] == '1' && arr[i+1][1] == '2'
                min_value = min(arr[i-1][2], arr[i+1][2])

                if isodd(2min_value + 1)
                    result = max(result, 2min_value + 1)
                end
            end
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
