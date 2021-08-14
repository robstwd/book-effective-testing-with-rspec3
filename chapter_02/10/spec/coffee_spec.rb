class Coffee
    def ingredients
        @ingredients ||= []
    end
    def add(ingredient)
        ingredients << ingredient
    end
    def price
        1.00 + ingredients.size * 0.25
    end
end

RSpec.describe 'A cup of coffee' do

    let(:coffee) { Coffee.new }

    it 'costs $1' do
        expect(coffee.price).to eq(1.00)
    end

    context 'with milk' do
        before { coffee.add :milk }

        it 'costs $1.25' do
            expect(coffee.price).to eq(1.25)
        end

    end

    it 'is dark in colour' do
        pending 'Colour not implemented yet'
        expect(coffee.colour).to be(:dark)
    end

    it 'is steaming hot' do
        pending 'Temperature not implemented yet'
        expect(coffee.temperature).to be > 200.0
    end

end