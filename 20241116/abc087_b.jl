using Printf

function main()
    a = parseint()
    b = parseint()
    c = parseint()
    x = parseint()

    result = 0

    for i ∈ 0:a, j ∈ 0:b, k ∈ 0:c
        if 500i + 100j + 50k == x
            result += 1
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
