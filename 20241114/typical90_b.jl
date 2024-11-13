function main()
    n = parseint()

    for bit ∈ 0:(1<<n)-1
        if isblanket(bit, n)
            println(makeblanket(bit, n))
        end
    end
end

function isblanket(bit, n)
    count_one = 0
    count_zero = 0
    satisfy = true

    for i ∈ 1:n
        if (bit >> (n - i)) & 1 == 1
            count_one += 1
        else
            count_zero += 1
        end

        if count_zero < count_one
            satisfy = false
        end
    end

    return count_one == count_zero && satisfy
end

function makeblanket(bit, n)
    s = ""

    for i ∈ 1:n
        if (bit >> (n - i)) & 1 == 1
            s *= ")"
        else
            s *= "("
        end
    end

    return s
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
