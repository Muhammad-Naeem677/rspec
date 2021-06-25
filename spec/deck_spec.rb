require 'deck'

RSpec::Matchers.define(:be_contiguous) do
    match do |array|
        !first_non_contiguous_pair(array)
    end

    failure_message do |array|
        "%s and %s were not contiguous" % first_non_contiguous_pair(array)
    end

    def first_non_contiguous_pair(array)
        array
            .sort
            .each_cons(2)
            .detect { |x, y| x + 1 != y }
    end
end

describe 'Deck' do
    describe '.all' do
        it 'contains 32 cards' do
            expect(Deck.all.length).to eq(32)
        end

        it 'has contiguous ranks by suit' do
            Deck.all.group_by { |card| card.suit }.each do |suit, cards|
                expect(cards.map { |card| card.rank }).to be_contiguous
            end
        end
    end
end