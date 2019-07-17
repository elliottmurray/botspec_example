

shared_examples "Order flowers on common shared context date" do |flower_types|

  shared_context "shared stuff" do
    let(:next_thursday) {
      date  = Date.parse("Thursday")
      delta = date > Date.today ? 0 : 7
      next_thursday_date = date + delta
      puts "\n\n next thursday will be: " + next_thursday_date.inspect
      next_thursday_date
    } 
  end

  include_context "shared stuff"

  flower_types.each do |flower_type, date|

    script "order some flowers of type: " + flower_type do

      user "I would like to order some flowers"
      chatbot "What type of flowers would you like to order?"
    
      user flower_type
      chatbot "What day do you want the " + flower_type + " to be picked up?"
     
      user "Pickup on " + next_thursday.strftime("%B %-d") + " " + " this year"
      chatbot "Pick up the " + flower_type + " at what time on " + next_thursday.strftime('%Y-%m-%d') + "?"
    
      user "noon"
      chatbot "Okay, your " + flower_type + " will be ready for pickup by 12:00 on .*.  Does this sound okay?"
    
      user "yes"

    end
 
  end

end

dialogs "shared examples ordering different flower types" do
  it_should_behave_like "Order flowers on common shared context date", ["Tulips", "Daffodils", "Lillies", "Wednesday"]
end

