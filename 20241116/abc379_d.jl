using Printf
using Primes

function main()
    s = parsestring()
    q = parseint()
    kq = parseints()

    @show map(x -> factor(x)[2], kq)

end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
