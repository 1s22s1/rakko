```julia
function main()
    n = parseint()
    s = parsestring()

    result = 1

    arr = rle(s)

    for i ∈ 1:length(arr)-3
        if arr[i][1] == '1' && arr[i+1][1] == '/' && arr[i+2][1] == '2' && arr[i][2] == arr[i+2][2] && arr[i+1][2] == 1
            result = max(result, 2arr[i][2] + 1)
        end
    end

    println(result)

end
```


/1211/2///2111/2222/11

```julia
function main()
    n = parseint()
    s = parsestring()

    result = 1

    arr = rle(s)

    for i ∈ eachindex(arr)
        if arr[i][1] == '/' && arr[i][2] == 1 && i-1 ≥ 1 && i+1 ≤ length(arr)
            counts = []

            if arr[i-1][1] == '1'
                push!(counts, arr[i-1][2])
            end

            if arr[i+1][1] == '2'
                push!(counts, arr[i+1][2])
            end

            if !isempty(counts)
                min_value = minimum(counts)

                if isodd(2min_value+1)
                    result = max(result, 2min_value+1)
                end
            end
        end
    end

    println(result)
end
```
