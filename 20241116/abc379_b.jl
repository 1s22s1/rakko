using Printf

function main()
    s = parsestring()
    arr = split(s, "|")
    arr = arr[begin+1:end-1]

    for elem ∈ arr
        print("$(length(elem)) ")
    end

    println("")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
