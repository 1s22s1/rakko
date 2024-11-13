function main()
    n, x, y = parseints()

    g = [[] for _ ∈ 1:n]

    for i ∈ 1:n-1
        push!(g[i], i + 1)
        push!(g[i+1], i)
    end

    push!(g[x], y)
    push!(g[y], x)

    dict = Dict()
    for i ∈ 1:n
        for a ∈ bfs(g, i)
            dict[a] = get(dict, a, 0) + 1
        end
    end

    for i ∈ 1:n-1
        println(get(dict, i, -1) ÷ 2)
    end
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
