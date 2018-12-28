def convert(s, num_rows)
    return s if num_rows == 1
    result_str = ""
    array = Array.new(num_rows) {""}
    current_row = 0
    going_down = false

    s.each_char do |ch|
        array[current_row] << ch
        if current_row == 0 || current_row == num_rows - 1
            going_down = !going_down
        end
        current_row += going_down ? 1 : -1
    end
    array.each do |row|
        result_str << row
    end
    result_str
end
