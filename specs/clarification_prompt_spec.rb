
dialogs "Error handling Clarification prompt" do

    script "provoke the clarification prompt" do
      user "I would like to fly to the moon"
      chatbot "I didn't understand you, what would you like to do?"
    end

    script "order some self-raising flour and plain flour" do
      user "I would like to order some flours"
      chatbot "What type of flowers would you like to order?"

      user "self-raising and plain"
      chatbot "What day do you want the plain to be picked up?"

      user "11am 2019-12-20"
      chatbot "Pick up the plain at what time on .*?"

      user "11am!!!"
      chatbot ".*"

      user "yes!"
      intent_fired [{intent_name: "WebUiOrderFlowers", 
                     slots: {"FlowerType" => "plain", 
                             "PickupDate" => "2019-12-20", 
                             "PickupTime" => "11:00"},
                     dialog_state: "ReadyForFulfillment"}]

    end

end

