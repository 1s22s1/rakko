using Printf

function main()
    s = parsestring()

    satisfy = true

    if s[begin] ≠ 'A'
        satisfy = false
    end

    if isuppercase(s[2])
        satisfy = false
    end

    count = 0
    for i ∈ 3:length(s)-1
        if s[i] == 'C'
            count += 1
        end

        if s[i] ≠ 'C' && isuppercase(s[i])
            satisfy = false
        end
    end

    if count ≠ 1
        satisfy = false
    end

    if isuppercase(s[end])
        satisfy = false
    end

    if satisfy
        println("AC")
    else
        println("WA")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
