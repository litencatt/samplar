class Client
  def foo
    [
      "#{self.class.to_s}.new.foo",
      "#=> execute instance method foo"
    ].join("\n")

  end

  def bar(arg1, arg2)
    [
      "#{self.class.to_s}.new.bar(#{arg1}, #{arg2})",
      "#=> execute instance method bar(#{arg1}, #{arg2})"
    ].join("\n")
  end

  def self.foo
    "class method foo"
  end

  def self.bar(arg1, arg2)
    "#{self.to_s}.bar(#{arg1}, #{arg2})"
  end
end

class ApiClient
  def self.foo
    self.to_s
  end

  def self.bar(arg1, arg2)
    "#{self.to_s}(#{arg1}, #{arg2})"
  end

  class Layer1
    def self.foo
      self.to_s
    end

    class Layer2
      def self.foo
        self.to_s
      end
    end
  end
end
