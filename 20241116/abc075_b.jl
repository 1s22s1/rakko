using Printf

function main()
    h, w = parseints()
    s = [split(parsestring(), "") for _ ∈ 1:h]

    for i ∈ 1:h
        for j ∈ 1:w
            count = 0

            if s[i][j] == "#"
                print("#")
            else
                for x ∈ [-1, 0, 1], y ∈ [-1, 0, 1]
                    surround_x = i + x
                    surround_y = j + y

                    if 1 ≤ surround_x ≤ h &&
                       1 ≤ surround_y ≤ w &&
                       s[surround_x][surround_y] == "#"
                        count += 1
                    end
                end

                print(count)
            end
        end

        println("")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
