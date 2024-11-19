using Printf

function main()
    n = parseint()
    hn = parseints()

    dp = fill(typemax(Int), n)
    dp[begin] = 0

    for i ∈ 1:n
        if i + 1 ≤ n
            dp[i+1] = min(dp[i+1], dp[i] + abs(hn[i+1] - hn[i]))
        end

        if i + 2 ≤ n
            dp[i+2] = min(dp[i+2], dp[i] + abs(hn[i+2] - hn[i]))
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
