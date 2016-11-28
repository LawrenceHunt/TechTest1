require_relative '../../lib/key_value'
require_relative '../../lib/key_value_array'

describe KeyValueArray do

  subject(:key_value_array) { described_class }
  let(:keyvalue1) {double :keyvalue1, key: 'key1', value: 'value1' }
  let(:keyvalue2) {double :keyvalue, key: 'key2', value: 'value2' }

  before do
    key_value_array.create
  end

  describe 'creation of key value array object' do
    it 'can be created with a class method' do
      array = key_value_array.instance
      expect(array).to be_an_instance_of(KeyValueArray)
    end
    it 'can save and return a KeyValue object to its array' do
      array = key_value_array.instance
      array.add_pair(keyvalue1)
      expect(array.array).to eq([keyvalue1])
    end
  end

  describe 'searching through values' do
    it 'can find a value for a given key' do
      array = key_value_array.instance
      array.add_pair(keyvalue1)
      array.add_pair(keyvalue2)
      expect(array.find_value('key2')).to eq('value2')
    end
  end
end
