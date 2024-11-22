using Printf
using OffsetArrays

function main()
    n, w = parseints()
    items = OffsetArray([parseints() for _ ∈ 1:n], 0:n-1)

    dp = OffsetArray(zeros(Int, n + 1, w + 1), 0:n, 0:w)

    for i ∈ 0:n-1, cur_w ∈ 0:w
        # i番目の品物を選ぶ場合
        if (cur_w - items[i][1] ≥ 0)
            dp[i+1, cur_w] = max(dp[i+1, cur_w], dp[i, cur_w-items[i][1]] + items[i][2])
        end

        # i番目の品物を選ばない場合
        dp[i+1, cur_w] = max(dp[i+1, cur_w], dp[i, cur_w])
    end

    result = dp[end, end]

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
