using Printf

function main()
    n, k = parseints()
    an = parseints()

    result = 0
    r = []

    for i ∈ 1:n-1
        if isempty(r)
            j = 2
        else
            j = r[end]
        end

        while j ≤ n && an[j] - an[i] ≤ k
            j += 1
        end

        push!(r, j - 1)
    end

    for i ∈ eachindex(r)
        result += r[i] - i
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
