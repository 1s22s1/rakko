using Printf

function main()
    a, b, c = parseints()

    pattern = []
    for i ∈ 1:4
        push!(pattern, a^i%10)
    end

    # r = b^c%4

    # if r == 0
    #     println(pattern[end])
    # else
    #     println(pattern[r])
    # end

    if isodd(b)
        println(pattern[begin])
    else
        println(pattern[begin+1])
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
