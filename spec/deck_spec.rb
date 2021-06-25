require 'deck'

describe 'Deck' do
    describe '.all' do
        it 'contains 32 cards' do
            expect(Deck.all.length).to eq(32)
        end

        it 'has contiguous ranks by suit' do
            Deck.all.group_by { |card| card.suit }.each do |suit, cards|
                contiguous = cards
                    .map { |card| card.rank }
                    .sort
                    .each_cons(2)
                    .all? { |x, y| x + 1 == y }
                
                expect(contiguous).to eq(true)
            end
        end
    end
end