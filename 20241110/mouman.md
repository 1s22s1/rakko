```julia
ary = [2, 4, 1, 4, 2]
n = size(ary, 1)

# 1<<nは、2^5と同じ意味である。
for bit ∈ 0:(1<<n)-1
    s = []

    for i ∈ 0:length(ary)-1
        if bit & 1 << i ≠ 0
            push!(s, ary[i+1])
        end
    end

    @show s
end
```
