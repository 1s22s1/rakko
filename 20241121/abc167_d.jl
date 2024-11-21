using Printf

function main()
    n, k = parseints()
    an = parseints()

    paths = []
    cur = 1

    while cur ∉ paths
        push!(paths, cur)

        cur = an[cur]
    end

    if cur == 1
        loop_length = length(paths)

        r = (k % loop_length) + 1

        result = paths[r]
    else
        index = findfirst(x -> x == cur, paths)
        scrap_length = index - 1
        loop_length = length(paths) - scrap_length

        if k ≤ scrap_length
            result = paths[k+1]
        else
            r = (k - scrap_length) % loop_length

            result = paths[scrap_length+1:end][r+1]
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
