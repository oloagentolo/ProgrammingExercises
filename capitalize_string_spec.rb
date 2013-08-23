require File.expand_path('../capitalize_string', __FILE__)

describe 'String capitalization' do
  context 'example 1' do
    it 'should capitalize the string' do
      result = capitalize_string('i love solving problems and it is fun')
      result.should == 'I Love Solving Problems and It Is Fun'
    end
  end

  context 'example 2' do
    it 'should capitalize the string' do
      result = capitalize_string('wHy DoeS A biRd Fly?')
      result.should == 'Why Does a Bird Fly?'
    end
  end

  context 'example 3' do
    it 'should raise an exception for an empty string' do
      expect { capitalize_string('') }.to raise_error
    end
  end
end

