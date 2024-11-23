using Printf

function main()
    n, k = parseints()
    an = parseints()

    result = 0

    for i ∈ 1:n-1
        for j ∈ i+1:n
            if an[j] - an[i] ≤ k
                result += 1
            else
                break
            end
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
