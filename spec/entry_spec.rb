require_relative '../models/entry'

RSpec.describe Entry do
    describe "attributes" do
        it "responds to name" do
            entry = Entry.new('J Dilla', '212.123.4567', 'j.dilla@ruffdraft.com')
            expect(entry).to respond_to(:name)
        end

        it "reports its name" do
            entry = Entry.new('J Dilla', '212.123.4567', 'j.dilla@ruffdraft.com')
            expect(entry.name).to eq('J Dilla')
        end

        it "responds to phone number" do
            entry = Entry.new('J Dilla', '212.123.4567', 'j.dilla@ruffdraft.com')
            expect(entry).to respond_to(:phone_number)
        end

        it "reports its phone_number" do
            entry = Entry.new('J Dilla', '212.123.4567', 'j.dilla@ruffdraft.com')
            expect(entry.phone_number).to eq('212.123.4567')
        end

        it "responds to email" do
            entry = Entry.new('J Dilla', '212.123.4567', 'j.dilla@ruffdraft.com')
            expect(entry).to respond_to(:email)
        end

        it "reports its email" do
            entry = Entry.new('J Dilla', '212.123.4567', 'j.dilla@ruffdraft.com')
            expect(entry.email).to eq('j.dilla@ruffdraft.com')
        end
    end
end 