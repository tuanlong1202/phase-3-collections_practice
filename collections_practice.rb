
def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort do |a,b|
        b <=> a
    end
end

def sort_array_char_count(array)
    array.sort do |a , b|
        a.size <=> b.size
    end
end

def swap_elements_from_to(array,from,to)
    tmp = array[from]
    array[from] = array[to]
    array[to] = tmp
end

def swap_elements(array)
    swap_elements_from_to(array,1,2)
    array
end

def reverse_array(array)
    length = array.size
    i = 0
    while i < length / 2
        swap_elements_from_to(array,i,length - (1 + i))
        i += 1
    end
    array
end

def kesha_maker(array)
    array.each_with_index do |item, index|
        strTmp = item.to_s
        arrTmp = strTmp.split("")
        arrTmp[2] = '$'
        strTmp = arrTmp.join
        array[index] = strTmp
    end
end

def find_a(array)
    array.select do |item|
        item.start_with?('a')
    end
end

def sum_array(array)
    array.inject do |sum,n|
        sum + n
    end
end

def add_s(array)
    array.each_with_index do |item,index|
        if index != 1
            array[index] = item + "s"
        end
    end
end