require 'spec_helper'
require 'date'


describe "Non-Existing Object" do 
    
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
    
    #Test No.1 - get a Todo Item that doesn't exist  
    it "should get a Todo Item that doesn't exist" do 
        title = ""
        due_date = ""
        
        a = HTTParty.get url("/todos/1"), 
            query: {}
        expect(a.code).to eq(404)
     end 
    
    #Test No.2 - posting with parameters into this object
    it "should post to an object with parameters" do 
        title = "Abi"
        due_date = "2013-10-14"
        
        b = HTTParty.post url("/todos/1"), 
            query: {title: title, due: due_date}
        expect(b.code).to eq(405)
     end 
    
    #Test No.3 - posting without parameters into this object 
    it "should post to object with no parameters" do 
        title = ""
        due_date = ""
        
        c = HTTParty.post url("/todos/1"), 
        query: {}
        expect(c.code).to eq(405)
    end 
    
    #Test No.4 - updating without parameters into this object 
    it "should update to this object with no parameters" do 
        title = ""
        due_date = ""
        
        d = HTTParty.put url("/todos/1"), 
        query: {}
        expect(d.code).to eq(422)
    end 
    
     #Test No.5 - updating with parameters into this object 
     it "should update to this object with parameters" do 
        title = "Aaron"
        due_date = "2012-03-20"
        
        e = HTTParty.put url("/todos/1"), 
        query: {title: title, due: due_date}
        expect(e.code).to eq(404)
    end 
    
     #Test No.6 - deleting this object 
     it "should delete without any parameters given" do 
        title = ""
        due_date = ""
        
        f = HTTParty.delete url("/todos/1"), 
        query: {}
        expect(f.code).to eq(404)
    end 
end 