function main()
    h, w = parseints()
    s = [split(parsestring(), "") for _ ∈ 1:h]

    g = makegraph(h, w, s)
    result = -1

    for i ∈ 1:h*w
        if !isempty(g[i])
            seen = bfs(g, i)

            result = max(result, maximum(seen))
        end
    end

    println(result)
end

function makegraph(h, w, s)
    g = [[] for _ ∈ 1:h*w]

    for y ∈ 1:h, x ∈ 1:w
        if s[y][x] == "."
            for (a, b) ∈ [[1, 0], [-1, 0], [0, -1], [0, 1]]
                adjacent_x = x + a
                adjacent_y = y + b

                if 1 ≤ adjacent_x ≤ w &&
                   1 ≤ adjacent_y ≤ h &&
                   s[adjacent_y][adjacent_x] == "."
                    push!(g[(y-1)*w+x], (adjacent_y - 1) * w + adjacent_x)
                end
            end
        end
    end

    return g
end

function bfs(graph::Vector{}, start::Int)
    nexts = [start]

    seen = fill(-1, length(graph))
    seen[start] = 0

    while !isempty(nexts)
        target_vertex = popfirst!(nexts)

        for vertex ∈ graph[target_vertex]
            if seen[vertex] ≠ -1
                continue
            end

            push!(nexts, vertex)
            seen[vertex] = seen[target_vertex] + 1
        end
    end

    return seen::Vector{}
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
