using Printf

function main()
    k = parseint()
    number = 7

    result = 1

    for _ ∈ 1:k
        if number % k == 0
            println(result)

            return
        else
            number = 10number + 7
            number %= k

            result += 1
        end
    end

    println(-1)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
