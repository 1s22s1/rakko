using Printf

function main()
    n = parseint()
    s = parsestring()

    if iseven(n)
        println("No")

        return
    end

    middle = (n + 1) ÷ 2

    for i ∈ 1:middle-1
        if s[i] ≠ '1'
            println("No")

            return
        end
    end

    if s[middle] ≠ '/'
        println("No")

        return
    end

    for i ∈ middle+1:n
        if s[i] ≠ '2'
            println("No")

            return
        end
    end

    println("Yes")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
