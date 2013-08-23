require File.expand_path('../contiguous_sum', __FILE__)

describe 'Contiguous sum' do
  context 'example 1' do
    it 'should return the largest sum from a set of contiguous numbers' do
      result = largest_sum_contiguous([-10, 2, 3, -2, 0, 5, -15])
      result.should eql(5)
    end
  end

  context 'example 2' do
  	it 'should return the largest sum from a set of contiguous numbers' do
  		result = largest_sum_contiguous([5, 2, 7, 6, 1, 3])
      result.should eql(18)
  	end
  end

  context 'example 3' do
  	it 'should return the largest sum from a set of contiguous numbers' do
  		result = largest_sum_contiguous([1, 3, 5, 7])
  		result.should eql(7)
  	end
  end
end
