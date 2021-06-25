require 'deck'

RSpec::Matchers.define(:be_contiguous) do
    match do |array|
        array.sort.each_cons(2).all? { |x, y| x + 1 == y }
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