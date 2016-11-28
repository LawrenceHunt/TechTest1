require_relative '../../lib/key_value'

describe KeyValue do
  subject(:keyvalue) { described_class.new('key1', 'value1') }

  describe 'creation of key value object' do
    it 'has a key and a value' do
      expect(keyvalue.key).to eq('key1')
      expect(keyvalue.value).to eq('value1')
    end
  end
end
