using Printf

function main()
    n, w = parseints()
    wvn = [parseints() for _ ∈ 1:n]

    dp = zeros(Int, n + 1, w + 1)

    @show dp
    for i ∈ 1:n, sum_w ∈ 0:w
        if sum_w - wvn[i][1] ≥ 0
            dp[i+1, sum_w] = dp[i, sum_w-wvn[i][1]+1] + wvn[i][2]
        end
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
