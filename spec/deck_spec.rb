require 'deck'

RSpec::Matchers.define(:be_contiguous_by_attribute) do |attr|
    puts "attributes=#{attr}"
    match do |array|
        !first_non_contiguous_pair(array, attr)
    end

    failure_message do |array|
        "%s and %s were not contiguous" % first_non_contiguous_pair(array, attr)
    end

    def first_non_contiguous_pair(array, attr)
        array
            .sort_by { |x| x.send(attr) }
            .each_cons(2)
            .detect { |x, y| x.send(attr) + 1 != y.send(attr) }
    end
end

describe 'Deck' do
    describe '.all' do
        it 'contains 32 cards' do
            expect(Deck.all.length).to eq(32)
        end

        it 'has contiguous ranks by suit' do
            Deck.all.group_by { |card| card.suit }.each do |suit, cards|
                expect(cards).to be_contiguous_by_attribute('rank')
            end
        end
    end
end