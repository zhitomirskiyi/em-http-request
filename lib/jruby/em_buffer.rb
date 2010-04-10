module EventMachine
  class Buffer < String
    def read length
      length ||= size
      length = size if length > size
      throw ArgumentError.new "length must be greater than zero" if length <= 0
      slice! 0,length
    end
  end
end
