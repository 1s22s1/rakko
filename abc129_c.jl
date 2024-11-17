using Printf

function main()
    n, m = parseints()
    broken = [parseint() for _ ∈ 1:m]

    dp = []

    if 1 ∈ broken
        push!(dp, 0)
    else
        push!(dp, 1)
    end

    if 2 ∈ broken
        push!(dp, 0)
    else
        push!(dp, dp[1]+1)
    end

    for i ∈ 3:n
        if i ∈ broken
            push!(dp, 0)
        else
            if dp[i-2] == 0 && dp[i-1] == 0
                push!(dp, 0)
            elseif any(x -> x == 0, [dp[i-2], dp[i-1]])
                push!(dp, max(dp[i-2], dp[i-1]))
            else
                push!(dp, (dp[i-2]+dp[i-1]) % 1000000007)
            end
        end
    end

    println(dp[end])
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
