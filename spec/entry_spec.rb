require_relative "../models/entry"

RSpec.describe Entry do
    let(:entry) { Entry.new("Matib Ahmad", "999.999.9999", "mmatiba@aol.com") }
    
    describe "attributes" do
        
        it "responds to name" do
            expect(entry).to respond_to(:name)
        end
       
        it "reports its name" do
           expect(entry.name).to eq("Matib Ahmad")
        end
       
        it "responds to phone number" do
           expect(entry).to respond_to(:phone_number)
        end
       
        it "reports its phone number" do 
           expect(entry.phone_number).to eq("999.999.9999")
        end

        it "responds to email" do
           expect(entry).to respond_to(:email)
        end
       
        it "reports its email" do
           expect(entry.email).to eq("mmatiba@aol.com")
        end
    end
    
    describe "to_s" do
        it "returns a string representation of entry" do
            expected_string = "Name: Matib Ahmad\nPhone Number: 999.999.9999\nEmail: mmatiba@aol.com"
            
            expect(entry.to_s).to eq(expected_string)
        end 
    end
end