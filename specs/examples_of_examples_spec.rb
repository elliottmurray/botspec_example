

shared_examples "Order flowers on date" do |flower_type_and_dates|

  flower_type_and_dates.each do |flower_type, date|

    script "order some flowers of type: " + flower_type do

      user "I would like to order some flowers"
      chatbot "What type of flowers would you like to order?"
    
      user flower_type
      chatbot "What day do you want the " + flower_type + " to be picked up?"
     
      user date
      chatbot "Pick up the " + flower_type + " at what time on .*?"
    
      user "noon"
      chatbot "Okay, your " + flower_type + " will be ready for pickup by 12:00 on .*.  Does this sound okay?"
    
      user "yes"

    end
 
  end

end

dialogs "shared examples ordering different flower types" do
  it_should_behave_like "Order flowers on date", [["Tulips", "20th December"], 
                                                  ["Daffodils", "1st of July"], 
                                                  ["Lillies", "Wednesday"]]
end

