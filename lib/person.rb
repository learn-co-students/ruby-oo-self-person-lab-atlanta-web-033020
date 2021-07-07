# your code goes here
require 'pry'

class Person 
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
 
    def initialize (name)

        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        
        #@hygiene.max(10).min(0) = hygiene

    end

    # set a specific setter & remove from accessor
    def happiness=(happiness)
        @happiness = happiness

        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end

        # if happiness > 10
            # happiness = 10
        # end

        # if happiness < 0
            # happiness = 0
        # end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene

        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        # In an instance, use @ because local variables only exist here inside the current method
        # If happiness > 7 shorthand for true/false
        @happiness > 7
    end



    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def work_out
        
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        "♪ another one bites the dust ♫"
    end


    def take_bath
       
        #setter = getter + 4
        self.hygiene = self.hygiene + 4
        
        #self.hygiene += 4

     #   if clean? == false
     # use hygiene= method instead of @hygiene
          # @hygiene += 4
     #   end
        
        "♪ Rub-a-dub just relaxing in the tub ♫"

            # sometimes self mandatory, other times optional
            # ?? can I switch the @ on or off for a purpose ??

            # test suggests I use: hygiene=
            # get @hygiene
            # check @hygiene (clean? true >7)
            # no need to check 0 because this only adds
            #check that it's not more than 10
            #
      
    end
    

    def call_friend(friend)
#binding.pry
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation(listener, topic)

        if topic == "politics"           
            self.happiness = self.happiness - 2
            listener.happiness = listener.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            listener.happiness = listener.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

    end



end
new_person = Person.new ("name")
new_person
