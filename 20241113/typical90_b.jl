function main()
    n = parseint()

    for bit ∈ 0:(1<<n)-1
        if isbracket(bit, n)
            println(makebracket(bit, n))
        end
    end
end

function isbracket(bit, n)
    count_one = 0
    count_zero = 0
    correspond = true

    for i ∈ 1:n
        if (bit >> (n - i)) & 1 == 1
            count_one += 1
        else
            count_zero += 1
        end

        if count_zero - count_one < 0
            correspond = false
        end
    end

    return count_one == count_zero && correspond
end

function makebracket(bit, n)
    string = ""

    for i ∈ 1:n
        if (bit >> (n - i)) & 1 == 1
            string *= ")"
        else
            string *= "("
        end
    end

    return string
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
