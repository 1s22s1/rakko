using Printf

function main()
    n, m = parseints()
    am = [parseint() for _ ∈ 1:m]

    dp = []
    push!(dp, 1)
    push!(dp, 2 ∈ am ? 0 : 1)

    for i ∈ 3:n+1
        value = 0

        if i-1 ∉ am
            value += dp[i-1]
        end

        if i-2 ∉ am
            value += dp[i-2]
        end

        push!(dp, value % 1000000007)
    end

    @show dp
    result = dp[end]

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
