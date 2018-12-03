def add_two_numbers(l1, l2)
    sentinel = ListNode.new(0)
    current = sentinel
    carry = 0
    current1 = l1
    current2 = l2
    while current1 || current2
        num1 = current1 ? current1.val : 0
        num2 = current2 ? current2.val : 0
        sum = num1 + num2 + carry
        carry = sum/10
        current.next = ListNode.new(sum%10)
        current = current.next
        current1 = current1.next if current1
        current2 = current2.next if current2
    end
    if carry > 0
        current.next = ListNode.new(carry)
    end
    sentinel.next
end
