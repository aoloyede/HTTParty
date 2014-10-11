require 'spec_helper'
require 'date'


describe "Existing object" do 
    
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
        get_id_all
    end 


    #Test No.1 - get existing object 
    it "should get a specified object requested" do 
        a = HTTParty.get url("/todos/#{@id[0]["id"]}"),
        query:{}
        puts @id[0][:id]
    expect(a.code).to eq(200)
    end 

    #Test No.2 - creating a Todo item with no parameters 
    it "should create a Todo item with no parameters and not succeed" do 
        b = HTTParty.post url("/todos/#{@id[0]["id"]}"),
        query:{}
        puts @id[0][:id]
    expect(b.code).to eq(405)
    end 

    #Test No.3 - creating a Todo item with parameters 
    it "should create a new item with given parameters" do
        title = "Aaron"
        due_date = "1992-07-21"
        c = HTTParty.post url("/todos/#{@id[0]["id"]}"),
        query:{title: title, due: due_date}
    expect(c.code).to eq(405)
    end 
    
    #Test No.4 - updating with no parameters 
    it "should update with no parameters" do 
        d = HTTParty.put url("/todos/#{@id[0]["id"]}"),
        query:{}
    expect(d.code).to eq(422)
    end 
    
    #Test No.5 - updating with parameters  
    it "should update with given parameters" do 
        title = "Aaron"
        due_date = "2011-03-12"
        e = HTTParty.put url("/todos/#{@id[0]["id"]}"),
        query:{title: title, due: due_date}
    expect(e.code).to eq(200)
    end 

    #Test No.6 - deleting without parameters  
    it "should delete without any parameters" do 
    f = HTTParty.delete url("/todos/#{@id[0]["id"]}"),
        query:{}
    expect(f.code).to eq(204)
    end 
end 