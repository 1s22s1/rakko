using Printf

function main()
    n, w = parseints()
    items = [parseints() for _ ∈ 1:n]

    dp = zeros(Int, n+1, w+1)

    for i ∈ 2:n, cur_w ∈ 1:w
        @show i, cur_w
        # i番目の品物を選ぶ場合
        if (cur_w - items[i][1]-1 ≥ 0)
            dp[i, cur_w] = max(dp[i, cur_w], dp[i-1, cur_w - items[i][1]+1]+items[i][2])
        end

        # i番目の品物を選ばない場合
        dp[i, cur_w] = max(dp[i, cur_w], dp[i-1, cur_w])
    end

    @show dp
    result = 0

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
