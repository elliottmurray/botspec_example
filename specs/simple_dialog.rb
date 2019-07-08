description "simple specs tests" do

  dialogs 'flowers' do

    what 'simple flowers test' do

      sends 'I would like to order some flowers'
      responds 'What type of flowers would you like to order'

      sends 'Tulips'
      responds "What day do you want the Tulips to be picked up?"

      sends "20th December"
      responds "Pick up the Tulips at what time on .*-12-20?"

      sends "noon "
      responds "Okay, your Tulips will be ready for pickup by 12:00 on .*-12-20.  Does this sound okay?"
      
      sends "yes"
      dialog_concludes

    end

    what 'simple flowers test' do

      sends 'I would like to order some flowers'
      responds 'What type of flowers would you like to order'

    
    end

  end
end 
