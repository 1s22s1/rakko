using Printf

function main()
    n = parseint()

    g = [[] for _ ∈ 1:n]

    for i ∈ 1:n
        a = parseint()

        push!(g[i], a)
    end

    seen = bfs(g, 1)

    if seen[2] == -1
        println(-1)
    else
        println(seen[2])
    end
end

function bfs(graph::Vector{}, start::Int)::Vector{}
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

    return seen
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
