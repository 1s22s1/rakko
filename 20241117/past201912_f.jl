using Printf

function main()
    s = parsestring()

    arr = rle(s)
    sort(arr, by=lowercase) |> join |> println
end

function rle(s::String)
    arr = []
    n = length(s)

    i = 1
    while i < n + 1
        j = i+1

        while j < n + 1 && islowercase(s[j])
            j += 1
        end

        push!(arr, s[i:j])
        i = j+1
    end

    return arr
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
