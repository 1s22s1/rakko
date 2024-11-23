using Printf

function main()
    n, k = parseints()
    an = parseints()

    s = [0]
    for a ∈ an
        push!(s, s[end]+a)
    end

    result = 0

    for i ∈ 1:length(s)-1
        for j ∈ i+1:length(s)
            if s[j] - s[i] ≤ k
                result += 1
            end
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
