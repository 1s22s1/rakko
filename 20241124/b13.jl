using Printf

function main()
    n, k = parseints()
    an = parseints()

    r = []
    sum = 0
    push!(an, 0)

    for i ∈ 1:n
        if isempty(r)
            j = 1
            sum = an[begin]
        else
            j = r[end]
            sum -= an[i-1]
        end

        while j ≤ n && sum ≤ k
            j += 1
            sum += an[j]
        end

        push!(r, j - 1)
        sum -= an[j]
    end

    result = 0

    for i ∈ eachindex(r)
        result += r[i] - i + 1
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
