require 'spec_helper'
require 'date'

describe "Empty Collection of Todos Test" do 

    
    after :all do 
        delete_all 
    end 
    
    #Test No.1 - creating a Todo Item with only title being inputted 
    it "should create a Todo Item with only title" do 
        title = "Romeo"
        
        a = HTTParty.post url("/todos"), 
            query: {title: title}
        expect(a.code).to eq(422)
     end 
    
    #Test No.2  - creating a Todo Item with only due date being imputted 
    it "should create a Todo Item with only due date" do 
        due_date = "09-10-2014"
        
        b = HTTParty.post url("/todos"), 
            query: {due: due_date}
        expect(b.code).to eq(422)
    end 
    
    #Test No.3 - creating a new Todo Item with both title and due being inputted 
    it "should create a Todo Item with both due date and title" do 
        title = "Abi"
        due_date = "2011-04-11"
        
        c = HTTParty.post url("/todos"), 
            query: {title: title, due: due_date}
        expect(c.code).to eq(201)
    end 
    
    #Test No.4 - attempting to create new Todo Item with no parameters
    it "should create a Todo Item with no parameters" do 
        title = ""
        due_date = ""
        
        d = HTTParty.post url("/todos"), 
            query: {}
        expect(d.code).to eq(422)
    end 
    
    #Test No.5 - attempting to read todo Item with no parameters
     it "should read a Todo Item with no parameters" do 
        title = ""
        due_date = ""
        
        e = HTTParty.get url("/todos"), 
            query: {}
        expect(e.code).to eq(200)
    end 
    
    #Test No.6 - attempting to update a Todo Item without any parameters 
     it "should update a Todo Item with no parameters" do 
        title = ""
        due_date = ""
        
        f = HTTParty.put url("/todos"), 
            query: {}
        expect(f.code).to eq(405)
    end 
    
    #Test No.7 - attempting to delete a Todo Item without any parameters 
    it "should delete a Todo Item without any parameters" do 
        title = ""
        due_date = ""
        
        g = HTTParty.delete url("/todos"), 
            query: {}
        expect(g.code).to eq(405)
    end 
end 