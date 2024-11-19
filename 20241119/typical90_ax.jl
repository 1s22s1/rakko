using Printf

function main()
    n, k = parseints()
    hn = parseints()

    dp = fill(typemax(Int), n)
    dp[begin] = 0

    for i ∈ 1:n-1
        for j ∈ 1:k
            if i + j ≤ n
                dp[i+j] = min(dp[i+j], dp[i] + abs(hn[i+j] - hn[i]))
            end
        end
    end

    result = dp[end]

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
