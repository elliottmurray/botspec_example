

shared_examples "Order flowers" do |flower_types|

  flower_types.each do |flower_type|
    script "order some flowers of type: " + flower_type do

      user "I would like to order some flowers"
      chatbot "What type of flowers would you like to order?"
    
      user flower_type
      chatbot "What day do you want the " + flower_type + " to be picked up?"
     
      user "20th December"
      chatbot "Pick up the " + flower_type + " at what time on %{this_year}-12-20?" % {this_year: DateTime.now.strftime('%Y')}
    
      user "noon"
      chatbot "Okay, your " + flower_type + " will be ready for pickup by 12:00 on .*-12-20.  Does this sound okay?"
    
      user "yes"

    end
  end
end

dialogs "shared examples ordering different flower types" do
  it_should_behave_like "Order flowers", ["Tulips", 
                                          "Daffodils", 
                                          "Daisies", 
                                          "Trucks", 
                                          "Sundays", 
                                          "Monday"]
end

