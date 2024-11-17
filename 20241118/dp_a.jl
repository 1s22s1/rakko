using Printf

function main()
    n = parseint()
    hn = parseints()

    dp = [0]
    push!(dp, abs(hn[2] - hn[1]))

    for i ∈ 3:n
        push!(dp, min(dp[i-1] + abs(hn[i] - hn[i-1]), dp[i-2] + abs(hn[i] - hn[i-2])))
    end

    println(dp[end])
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
