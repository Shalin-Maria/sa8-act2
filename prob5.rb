module Payments
    class Invoice
      def initialize(customer_name, amount)
        @customer_name = customer_name
        @amount = amount
      end
  
      def show_details
        puts "Invoice for #{@customer_name}: #{@amount}"
      end
    end
    class Receipt
      def initialize(store_name, items)
        @store_name = store_name
        @items = items
      end
  
      def show_details
        puts "Receipt from #{@store_name}:"
        @items.each { |item| puts "- #{item}" }
      end
    end
  end
  invoice = Payments::Invoice.new("Shalin", 56)
  invoice.show_details  
  receipt = Payments::Receipt.new("Kroger", ["Milk", "Bread", "Eggs"])
  receipt.show_details