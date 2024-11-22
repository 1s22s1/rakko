using Printf

function main()
    s = parsestring()

    if length(s) |> isodd
        println("No")

        return
    end

    for i ∈ 1:length(s)÷2
        if s[2i-1] ≠ s[2i]
            println("No")

            return
        end
    end

    if length(unique(s)) * 2 ≠ length(s)
        println("No")

        return
    end

    println("Yes")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
