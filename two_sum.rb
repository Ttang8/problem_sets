def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |num, idx|
        check = target - num
        if hash[check] && hash[check] != idx
            return [idx, hash[check]]
        else
            hash[num] = idx
        end
    end
end
