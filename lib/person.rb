# your code goes here

class Person 
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def happiness=(value)
    if value > 10 
      @happiness = 10 
      elsif value < 0 
      @happiness = 0 
    else 
      @happiness = value
    end
  end
  
  def hygiene=(value)
    if value > 10 
      @hygiene = 10 
      elsif value < 0 
      @hygiene = 0 
    else 
    @hygiene = value
  end
  end
  
  def happy?
    happiness > 7 ? true : false
  end
  
  def clean?
    hygiene > 7 ? true : false
  end 
  
  def get_paid(salary)
    @bank_account += salary
    
    "all about the benjamins"
  end
  
  def take_bath
    self.hygiene += 4 
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out 
    self.happiness += 2 
    self. hygiene -= 3
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person, topic)
    string = ""
        if topic == "politics"
            string = "blah blah partisan blah lobbyist"
            self.happiness = (@happiness - 2)
            person.happiness = person.happiness - 2
        elsif topic == "weather"
            string = "blah blah sun blah rain"
            self.happiness = (@happiness + 1)
            person.happiness = person.happiness + 1
        else
        string = "blah blah blah blah blah"
        end
        string
    end
  
  
end 
