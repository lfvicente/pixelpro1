class BankAccount
    attr_accessor :name, :transactions

    def initialize(name)
        @name = name
        @transactions = []
        add_transaction("Saldo inicial", 0)
    end
    
    def credit(description, amount)
        add_transaction(description, amount)
    end

    def debit(description, amount)
        add_transaction(description, -amount)
    end

    def add_transaction(description, amount)
        @transactions.push(description: description, amount: amount)
    end
    
    def balance 
        balance = 0.0
        transactions.each do |transaction|
            balance +=transaction[:amount]
           
        end
        balance
    end

    def print_movements
        
        puts "\n"
        puts to_s
        puts "-"*60
        puts "Detalle".ljust(30) + "Cantidad".rjust(30)
        puts "-"*60
        transactions.each do |transaction|
            puts transaction[:description].ljust(30) + sprintf("%0.2f €",transaction[:amount]).rjust(30)
        end
        puts "-"*60
        puts sprintf("%0.2f €",balance).rjust(60)
        
        
    end
    
    def to_s
        "Titular: #{name},  \t  \t Saldo: \t #{sprintf("%0.2f €",balance)}"
    end  

    protected_methods
  

end


bankaccount = BankAccount.new("IAM")

bankaccount.credit("Nómina", (Random.new.rand(9)+1)*100)
bankaccount.debit("Cine",  (Random.new.rand(9)+1))
bankaccount.debit("Gasolina",  (Random.new.rand(9)+1)*10)

puts bankaccount.print_movements 
# puts bankaccount
# puts bankaccount.inspect
# puts "Cuenta: \t #{bankaccount.name}"

# bankaccount.transactions.each do |transaction|
#     puts  transaction[:description]   transaction[:amount]
   
# end