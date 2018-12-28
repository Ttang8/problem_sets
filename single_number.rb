def single_number(nums)
        hash = {}
    nums.each do |int|
        if hash[int]
           hash.delete(int)
        else
            hash[int] = true
        end
    end
    hash.keys.first
end
