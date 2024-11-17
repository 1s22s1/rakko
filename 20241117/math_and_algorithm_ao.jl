using Printf

function main()
    n, m = parseints()
    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    if isbipartialgraph(g)
        println("Yes")
    else
        println("No")
    end
end

"""
    bfs(graph::Vector{}, start::Int)::Vector{}

startを始点として幅優先探索を行う。
"""
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

"""
    isbipartialgraph(graph::Vector{})::Bool

二部グラフかどうか判定する。
"""
function isbipartialgraph(graph::Vector{})::Bool
    seen = bfs(graph, 1)

    isbipartial = true

    for i ∈ eachindex(graph)
        if any(x -> seen[x] % 2 == seen[i] % 2, graph[i])
            isbipartial = false
        end
    end

    return isbipartial
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
