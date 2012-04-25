class Product < Sequel::Model
  def self.new_monkey_product
    self.insert(:name => 'Monkey Product', :description => rand * 100)
  end

  def self.delete_monkey_products
    self.filter(:name => 'Monkey Product').delete()
  end
end