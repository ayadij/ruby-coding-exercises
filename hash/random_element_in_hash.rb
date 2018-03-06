require 'rspec'

menu = {
  'appetizers': ['Chips', 'Quesadillas', 'Flatbread'],
  'entrees': ['Steak', 'Chicken', 'Lobster'],
  'dessers': ['Cheesecake', 'Cake', 'Cupcake']
}

def daily_special hash
  food_array = []
  hash.to_a.map { |submenu| submenu.last }.flatten.sample
end

describe 'Nested hash element selector' do
  it 'selected a random element from the set of nested arrays' do
    expect(daily_special(menu).class).to eq(String)
  end
end



        # RYAN
        # def daily_special hash
        #   hash[hash.keys.sample].sample
        # end

        # WESTON
        # def daily_special hash
        #     values = hash.values
        #     arr = values[rand(values.size)]
        #     arr[rand(arr.size)]
        # end

        # ANDREW
        # def daily_special hash
        #  hash.map { |item| item.last}.to_a.flatten.sample
        # end

        # JUSTIN
        # def daily_special menu
        #  menu.fetch(menu.keys.sample).sample.to_s
        # end 

        # RUSTIN
        # def daily_special hash
        #   hash.values.flatten.sample
        # end