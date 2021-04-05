require 'pry'
class Array

  def rebuild!(&block)
    result = []

    self.each do |element|
      if element.kind_of?(Array)
        res = []
        size_array = element.size
      element.each do |el|
        res << block.call(el,size_array)
      end
      result << res
      else
        result << block.call(element,self.size)
      end
    end
    result
  end
end
