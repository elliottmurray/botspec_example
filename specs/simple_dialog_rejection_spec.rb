
dialogs "Rejections" do

    script "order some flowers then say no to the day" do

      user "I would like to order some flowers"
      chatbot "What type of flowers would you like to order?"
    
      user "Tulips"
      chatbot "What day do you want the Tulips to be picked up?"
     
      user "no"
      chatbot "What day do you want the Tulips to be picked up?"
    
      user "no"
      chatbot "Sorry, I'm not able to assist at this time"
    
    end

    script "order some flowers then say no to the time prompt" do

      user "I would like to order some flowers"
      chatbot "What type of flowers would you like to order?"
    
      user "Tulips"
      chatbot "What day do you want the Tulips to be picked up?"
     
      user "20th of December"
      chatbot "Pick up the Tulips at what time on .*?"
    
      user "no"
      chatbot "Pick up the Tulips at what time on .*?"

      user "no"
      chatbot "Sorry, I'm not able to assist at this time"
    
    end

    script "order some flowers then reject after the confirmation prompt" do

      user "I would like to order some flowers"
      chatbot "What type of flowers would you like to order?"
    
      user "Tulips"
      chatbot "What day do you want the Tulips to be picked up?"
     
      user "20th of December"
      chatbot "Pick up the Tulips at what time on .*?"
    
      user "noon"
      chatbot "Okay, your Tulips will be ready for pickup by 12:00 on 2019-12-20.  Does this sound okay?"
    
      user "no"
      chatbot "Okay, I will not place your order."

    end

end

