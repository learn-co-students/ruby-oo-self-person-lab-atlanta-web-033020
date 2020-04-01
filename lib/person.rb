# your code goes here
class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account
    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else 
            @hygiene = hygiene
        end
    end
    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else 
            @happiness = happiness
        end
    end
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happy?
        @happiness > 7
    end
    def clean? 
        @hygiene > 7
    end
    def get_paid(salary)
        @bank_account = @bank_account + salary
        "all about the benjamins"
    end
    def take_bath
        self.hygiene=(@hygiene+4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
end