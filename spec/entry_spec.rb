require_relative '../models/entry'

RSpec.describe Entry do
    describe "attributes" do
        let(:entry) { Entry.new('J Dilla', '212.123.4567', 'j.dilla@ruffdraft.com') }

        it "responds to name" do
            expect(entry).to respond_to(:name)
        end

        it "reports its name" do
            expect(entry.name).to eq('J Dilla')
        end

        it "responds to phone number" do
            expect(entry).to respond_to(:phone_number)
        end

        it "reports its phone_number" do
            expect(entry.phone_number).to eq('212.123.4567')
        end

        it "responds to email" do
            expect(entry).to respond_to(:email)
        end

        it "reports its email" do
            expect(entry.email).to eq('j.dilla@ruffdraft.com')
        end
    end
    describe "#to_s" do
        it "prints an entry as a string" do
            entry = Entry.new('J Dilla', '212.123.4567', 'j.dilla@ruffdraft.com')
            expected_string = "Name: J Dilla\nPhone Number: 212.123.4567\nEmail: j.dilla@ruffdraft.com"
            expect(entry.to_s).to eq(expected_string)
        end
    end
end 