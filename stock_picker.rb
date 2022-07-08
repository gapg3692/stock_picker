array=[17,3,6,1,15,20,6,1,10]

def stock_picker(array)
   
    result=0
    pos1=0
    pos2=0
    array.each_index do |index| 
        array_2 = array.clone
        array_2.shift(index+1)

        array_2.each_index do |index_2|
     
           if result < (array_2[index_2] - array[index])
            result = array_2[index_2] - array[index] 
            pos1=index
            pos2=index_2+index+1
           end
 
    end
end

  return [pos1, pos2]

end


p stock_picker(array)