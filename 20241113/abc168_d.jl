function main()
    n, m = parseints()
    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()
        push!(g[a], b)
        push!(g[b], a)
    end

    @show g
    for i ∈ 2:n
        @show bfs(g, i)
    end
end

function bfs(graph::Vector{}, start::Int)
    nexts = [start]

    seen = fill(-1, length(graph))
    pop_count = 0
    seen[start] = pop_count

    while !isempty(nexts)
        target_vertex = popfirst!(nexts)
        pop_count += 1

        for vertex ∈ graph[target_vertex]
            if seen[vertex] ≠ -1
                continue
            end

            push!(nexts, vertex)
            seen[vertex] = pop_count
        end
    end

    return seen::Vector{}
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
