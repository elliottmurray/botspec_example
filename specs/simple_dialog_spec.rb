

dialogs "simple ordering flowers" do

  script 'order some Tulips for a specific date' do
    
    user "I would like to order some flowers"
    chatbot "What type of flowers would you like to order?"
    
    user "Tulips"
    chatbot "What day do you want the Tulips to be picked up?"
     
    user "20th December"
    chatbot "Pick up the Tulips at what time on %{this_year}-12-20?" % {this_year: DateTime.now.strftime('%Y')}
    
    user "noon"
    chatbot "Okay, your Tulips will be ready for pickup by 12:00 on .*-12-20.  Does this sound okay?"
    
    user "yes"
    intent_fired [{intent_name: "WebUiOrderFlowers", 
                   slots: {"FlowerType" => "Tulips", 
                           "PickupDate" => "2019-12-20", 
                           "PickupTime" => "12:00"},
                   dialog_state: "ReadyForFulfillment"}]

  end

  script 'order simple lillies' do
    user "give me flowers please"
    chatbot "What type of flowers would you like to order?"

    user "Trucks"
    chatbot "What day do you want the Trucks to be picked up?"

    user "20th December"
    chatbot "Pick up the Trucks at what time on .*-12-20?"

    user "noon"
    chatbot "Okay, your Trucks will be ready for pickup by 12:00 on .*-12-20.  Does this sound okay?"
  end

  script 'confuse chatbot by saying a day instead of a flower type' do
    user "give me flowers please"
    chatbot "What type of flowers would you like to order?"

    user "Monday"
    chatbot "What day do you want the Monday to be picked up?"

    user "Monday"
    chatbot "Pick up the Monday at what time on .*-12-20?"

    user "noon"
    chatbot "Okay, your Trucks will be ready for pickup by 12:00 on .*-12-20.  Does this sound okay?"
  end

end 
