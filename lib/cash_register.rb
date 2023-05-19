
require 'pry'

    attr_accessor :total
    attr_accessor :discount
    attr_accessor :items
    attr_accessor :dollars

class CashRegister
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        #@last_transaction_amount = 0
      end
    
      def add_item(item, price, amount = 1)
        @total += price * amount
        #quantity.times { @items << item }
        #@last_transaction_amount = price * quantity
      end
    
      def apply_discount
        if discount > 0 
          my_discount = (@total * @discount / 100.0).to_i
          @total -= @total - my_discount
          "After the discount, the total comes to $#{@total}."
        else 
          "There is no discount to apply."
      
        end
      end

        def items(items, price)
            @items << item
        end
    
      def void_last_transaction
        @total -= @last_transaction_amount
      end
    end
    
    
binding.pry