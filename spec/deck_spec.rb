require 'deck'

describe 'Deck' do
    describe '.all' do
        it 'contains 32 cards' do
            expect(Deck.all.length).to eq(32)
        end

        it 'has seven as it lowest card' do
            Deck::SUITS.each do |suit|
                expect(Deck.all).to include(Card.build(suit, 8))
                expect(Deck.all).to_not include(Card.build(suit, 7))
            end
        end
    end
end