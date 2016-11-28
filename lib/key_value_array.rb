class KeyValueArray

  attr_reader :array

  def initialize
    @array = []
  end

  def self.create
    @key_value_array = KeyValueArray.new()
  end

  def self.instance
    @key_value_array
  end

  def add_pair(key_value_object)
    @array << key_value_object
  end

  def find_value(key)
    @array.each { |item| return item.value if (item.key == key) }
  end

end
