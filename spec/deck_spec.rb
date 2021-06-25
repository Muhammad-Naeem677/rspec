require 'deck'

describe 'Deck' do
    describe '.all' do
        it 'contains 32 cards' do
            expect(Deck.all.length).to eq(32)
        end

        it 'has seven as it lowest card' do
            expect(Deck.all).to all(have_attributes(rank: be >= 8))
        end
    end
end