require 'spec_helper'
require 'date'


describe "Non-Empty Collection" do 
    before :each do 
        delete_all 
        hash = [
            {title: "Abi", due: Date.today.to_s},
            {title: "Romeo", due: Date.today.to_s},
            {title: "Trish", due: Date.today.to_s},
            {title: "Dave", due: Date.today.to_s},
            {title: "Sonny", due: Date.today.to_s},
            {title: "Aaron", due: Date.today.to_s},
            ]
        create_todos hash 
    end 
    
    #Test No.1 - get a Todo Item without no parameters 
    it "should get a Todo Item without any parameters" do 
        title = ""
        due_date = ""
        
        a = HTTParty.get url("/todos"), 
            query: {}
        expect(a.code).to eq(200)
     end 
end