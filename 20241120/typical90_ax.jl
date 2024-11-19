using Printf

function main()
    n, l = parseints()

    mod = 10^9 + 7

    dp = zeros(Int, n + 1)
    dp[begin] = 1

    for i ∈ 1:n
        if i + 1 ≤ n + 1
            dp[i+1] += dp[i]
            dp[i+1] %= mod
        end

        if i + l ≤ n + 1
            dp[i+l] += dp[i]
            dp[i+l] %= mod
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
