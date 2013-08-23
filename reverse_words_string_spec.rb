require File.expand_path('../reverse_words_string', __FILE__)

describe 'String reverse words' do
  context 'example 1' do
    it 'should reverse the words in the string' do
      result = reverse_words('The quick brown fox jumped over the lazy dog.')
      result.should == 'dog. lazy the over jumped fox brown quick The'
    end
  end

  context 'example 2' do
    it 'should reverse the words in the string' do
      result = reverse_words('Hello world!')
      result.should == 'world! Hello'
    end
  end
end
