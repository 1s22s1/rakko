using Printf

function main()
    mod = 1000000007

    n, m = parseints()
    am = [parseint() for _ ∈ 1:m]
    # am .+= 1

    dp = fill(0, n + 1)
    dp[1] = 1

    if 2 ∉ am
        dp[2] = 1
    end

    for i ∈ 3:n+1
        if i - 1 ∉ am
            dp[i] += dp[i-1]
        end

        if i - 2 ∉ am
            dp[i] += dp[i-2]
        end

        dp[i] %= mod
    end

    println(dp[end])
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
