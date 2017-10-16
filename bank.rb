class Customer
    attr_accessor :accountNumber
    attr_accessor :firstName
    attr_accessor :lastName

    def initialize(fn, ln, acct)
        @accountNumber = acct
        @firstName = fn
        @lastName = ln
    end
end


class Bank
    attr_accessor :name
    attr_accessor :address
    attr_accessor :lastName
    attr_accessor :customers

    def initialize
        @name = ""
        @address = ""
        @lastName = ""

        @customers = Array.new
    end
end

# Create the bank
FirstTennessee = Bank.new

# Create some customers
steve = Customer.new("Steve", "Brownlee", "000000000")
ryan = Customer.new("Ryan", "Tanay", "000000000")
charisse = Customer.new("Charisse", "Lambert", "000000000")

# Add the customers into the aggregate instance variable of the bank
FirstTennessee.customers.push(steve)
FirstTennessee.customers.push(ryan)
FirstTennessee.customers.push(charisse)