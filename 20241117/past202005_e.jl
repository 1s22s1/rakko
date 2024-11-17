using Printf

function main()
    n, m, q = parseints()

    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()
        push!(g[a], b)
        push!(g[b], a)
    end

    colors = parseints()

    for _ ∈ 1:q
        s = parseints()

        if s[begin] == 1
            println(colors[s[end]])

            colors[g[s[end]]] .= colors[s[end]]
        elseif s[begin] == 2
            println(colors[s[begin+1]])
            colors[s[begin+1]] = s[end]
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
