# your code goes here

# get paid/receive payments
# take a bath
# call a friend
# start a conversation
# state if they are happy and/or clean

# First you need to create a person class that is initialized with a name that cannot be changed.
# Each instance of class Personshould be able to remember their name
# Each instance of class Person should start with $25 in their bank accounts
# Each instance of class Person should start with eight happiness points
# Each instance of class Person should start with eight hygiene points
# The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
# The amount in the bank account should also be able to change, though it has no max or min.

class Person
    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(amount)
        @bank_account = amount
    end
    
    def get_paid(salary)
        @bank_account += salary

        "It's all about the benjamins"
    end

    def happiness=(points)
        if points > 10
            @happiness = 10
        elsif points < 0
            @happiness = 0
        else
            @happiness = points
        end
    end

    def hygiene=(points)
        if points > 10
            @hygiene = 10
        elsif points < 0
            @hygiene = 0
        else
            @hygiene = points
        end
    end

    def take_bath
        @hygiene += 4

        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
end