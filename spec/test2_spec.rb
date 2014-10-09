require 'spec_helper'
require 'date'

describe "Non-Empty Collection" do 
    
    #Test No.1 - get a Todo Item without no parameters 
    it "should get a Todo Item without any parameters" do 
        title = ""
        due_date = ""
        
        a = HTTParty.get url("/todos"), 
            query: {}
        expect(a.code).to eq(200)
     end 
end