def questions_marks(str)
    array = []
    question_count = 0
    nums = ['1','2','3','4','5','6','7','8','9','0']
    str.each_char do |ch|
         if array.length > 0
            if ch == '?'
                question_count += 1
            end
        end
        if nums.include?(ch)
            array << ch.to_i
            if array.length == 2
                if array[0] + array[1] == 10 && question_count == 3
                    return true
                else
                    array.shift
                    question_count = 0
                end

            end
        end

    end
    false
end

puts questions_marks("arrb6???4xxbl5???eee5") == true
puts questions_marks("acc?7??sss?3rr1??????5") == true
puts questions_marks("5??aaaaaaaaaaaaaaaaaaa?5?5") == true
puts questions_marks("9???1???9???1???9") == true
puts questions_marks("aa6?9") == false
