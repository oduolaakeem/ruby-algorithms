class CustomSort

  attr_reader :array

  def initialize(base)
    @base = base
  end

  def bubble_sort
    array = @base
    array.each_index do |index1|
      index1.upto(array.size-2) do |index2|
        if array[index1] > array[index2+1]
          array[index1], array[index2+1] = array[index2+1], array[index1]
        end
      end
    end
    array
  end

  def selection_sort
    array = @base
    0.upto(array.size-2) do |index1|
      min_index = index1
      (index1+1).upto(array.size-1) do |index2|
        min_index = index2 if array[index1] > array[index2]
      end
      array[index1], array[min_index] = array[min_index], array[index1]
    end
    array
  end

end