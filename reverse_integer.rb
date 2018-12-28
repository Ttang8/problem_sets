def reverse(x)
    negative = false
    if x < 0
        negative = true
        x = x * -1
    end

    ans = 0
    until x / 10 == 0
        hold = x % 10
        x = x / 10
        ans = ans * 10 + hold
    end
    if negative
        if (ans * 10 + x) * -1 < -2 ** 31
            return 0
        end
        return (ans * 10 + x) * -1
    end
    if (ans * 10 + x) > 2 ** 31
        return 0
    end
    ans * 10 + x
end
