class Menu
  attr_accessor :type, :order

  def initialize(type, order)
    @type = type
    @order = order
  end
end

menu1 = Menu.new(1, 1)
menu2 = Menu.new(2, 1)
menu3 = Menu.new(1, 2)
menu4 = Menu.new(2, 2)
menu5 = Menu.new(1, 3)
menu6 = Menu.new(2, 3)
array = [menu1, menu2, menu3, menu4, menu5, menu6]

array.sort_by! { |menu| [menu.type, menu.order] }
p array
