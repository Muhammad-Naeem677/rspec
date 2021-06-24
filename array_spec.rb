RSpec.describe 'an array' do
    def build_array(*args)
        [*args]
    end

    it 'has a length' do
        raise unless build_array("a").length == 1
    end

    it 'has a first element' do
        raise unless build_array("a").first == "a"
    end
    
end
