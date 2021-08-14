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

RSpec.configure do |config|
    # add this to configure for focused examples
    config.filter_run_when_matching(focus: true)
    config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe 'A cup of coffee' do

    let(:coffee) { Coffee.new }

    it 'costs $1' do
        expect(coffee.price).to eq(1.00)
    end

    # focus: true enables focus
    context 'with milk', focus: true do
        before { coffee.add :milk }

        it 'costs $1.25' do
            expect(coffee.price).to eq(1.25)
        end

    end

end