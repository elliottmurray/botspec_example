

shared_examples "Order flowers at day time range" do |time_of_day_and_abbreviation|

  time_of_day_and_abbreviation.each do |time_of_day, abbreviation|

    script "chatbot can handle different day time ranges" do

      user "I would like to order some flowers"
      chatbot "What type of flowers would you like to order?"
    
      user "Tulips"
      chatbot "What day do you want the Tulips to be picked up?"
     
      user "20th of December"
      chatbot "Pick up the Tulips at what time on .*?"
    
      user "in the " + time_of_day
      chatbot "Okay, your Tulips will be ready for pickup by " + abbreviation + " on .*.  Does this sound okay?"
    
      user "yes"

    end
 
  end

end

dialogs "shared examples ordering different flower types" do
  it_should_behave_like "Order flowers at day time range", [["morning", "MO"], 
                                                            ["afternoon", "AF"], 
                                                            ["evening", "EV"]]
end

