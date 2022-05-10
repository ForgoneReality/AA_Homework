class Stack
    attr_reader :ivar

    def initialize
      @ivar = Array.new
    end

    def push(el)
      @ivar.push(el)
    end

    def pop
      @ivar.pop
    end

    def peek
      @ivar[-1]
    end
end

class Queue
    def initialize
        @ivar = Array.new
    end

    def enqueue(el)
        @ivar.push(el)
    end

    def dequeue
        @ivar.shift
    end

    def peek
        @ivar[0]
    end
end

class Map
    def initialize
        @ivar = Array.new
    end

    def set(key, value)
        if (get(key) == nil)
            @ivar.push([key, value])
        end
    end

    def get(key)
        @ivar.each do |ele|
            if ele[0] == key
                return ele[1] 
            end
        end
        return nil
    end

    def delete(key)
        @ivar.each_with_index do |ele, i|
            if ele[0] == key
                @ivar.delete(i)
                return
            end
        end
    end

end

