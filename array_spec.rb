RSpec.describe 'an array' do
    def build_array(*args)
        [*args]
    end

    puts self
    puts self.class
    puts

    it 'has a length' do
        puts self
        puts self.class
        puts
        raise unless build_array("a").length == 1
    end

    it 'has a first element' do
        raise unless build_array("a").first == "a"
    end

end
