require 'spec_helper'
require 'date'

describe "Non-Existing Object" do 
    
    #Test No.1 - get a Todo Item that doesn't exist  
    it "attemptng to get a Todo Item that doesn't exist " do 
        title = ""
        due_date = ""
        
        a = HTTParty.get url("/todos/1"), 
            query: {}
        expect(a.code).to eq(404)
     end 
    
    #Test No.2 - posting with parameters into this object
end 