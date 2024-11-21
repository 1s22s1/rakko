using Printf

function main()
    n = parseint()
    abc = [parseints() for _ ∈ 1:n]

    dp = [[0, 0, 0]]

    for i ∈ 1:n
        arr = []

        push!(arr, max(dp[i][2] + abc[i][1], dp[i][3] + abc[i][1]))
        push!(arr, max(dp[i][1] + abc[i][2], dp[i][3] + abc[i][2]))
        push!(arr, max(dp[i][1] + abc[i][3], dp[i][2] + abc[i][3]))

        push!(dp, arr)
    end

    result = maximum(dp[end])

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
