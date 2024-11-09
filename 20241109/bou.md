```julia
function main()
    n, m = parseints()
    xm = parseints()
    am = parseints()

    result = 0

    cur_pos = 0
    stone_cnt = 0
    for i ∈ 1:m
        @show i
        stone_cnt += am[i]
        distance = xm[i] - cur_pos

        if distance > stone_cnt
            println(-1)

            return
        end

        @show cur_pos, stone_cnt

        cur_pos = xm[i]
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
```

```julia

    for i ∈ 1:m
        necessary_stone = xm[i] - cur_pos
        cur_stone += am[i]

        if cur_stone < necessary_stone
            println(-1)

            return
        end

        result = necessary_stone * (necessary_stone -1) ÷ 2

        cur_pos = xm[i]
        cur_stone -= necessary_stone

        @show cur_pos, cur_stone
    end
```
