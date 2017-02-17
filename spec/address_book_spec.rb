require_relative '../models/address_book'

RSpec.describe AddressBook do
    let(:book) { AddressBook.new }

    describe "attributes" do
        it "responds to entries" do
            expect(book).to respond_to(:entries)
        end

        it "initializes entries as an array" do
            expect(book.entries).to be_an(Array)
        end

        it "initializes entries as empty" do
            expect(book.entries.size).to eq(0)
        end
    end

    describe "#add_entry" do
        it "adds only one entry to the address book" do
            book.add_entry('J Dilla', '212.123.4567', 'j.dilla@ruffdraft.com')

            expect(book.entries.size).to eq(1)
        end

        it "adds the correct information to entries" do
            book.add_entry('J Dilla', '212.123.4567', 'j.dilla@ruffdraft.com')
            new_entry = book.entries[0]

            expect(new_entry.name).to eq('J Dilla')
            expect(new_entry.phone_number).to eq('212.123.4567')
            expect(new_entry.email).to eq('j.dilla@ruffdraft.com')
        end
    end

    describe "#remove_entry" do
        it "removes an entry from the address book" do
            book.add_entry('Madlib', '212.765.4321', 'madlib@stonesthrow.com')

            name = 'J Dilla'
            phone_number = '212.123.4567'
            email = 'j.dilla@ruffdraft.com'
            book.add_entry(name, phone_number, email)

            expect(book.entries.size).to eq(2)
            book.remove_entry(name, phone_number, email)
            expect(book.entries.size).to eq(1)
            expect(book.entries.first.name).to eq('Madlib')

        end
    end

    # Test that AddressBook's .import_from_csv() method is working as expected
    def check_entry(entry, expected_name, expected_number, expected_email)
        expect(entry.name).to eq expected_name
        expect(entry.phone_number).to eq expected_number
        expect(entry.email).to eq expected_email
    end

    describe "#import_from_csv" do
        it "imports the correct number of entries" do
            book.import_from_csv("entries.csv")
            book_size = book.entries.size
            # Check the size of the entries in AddressBook
            expect(book_size).to eq(5)
        end

        it "imports the 1st entry" do
            book.import_from_csv("entries.csv")
            # Check the first entry
            entry_one = book.entries[0]
            check_entry(entry_one, "Tash", "123.456.7890", "tash@tashsultana.com")
        end

        it "imports the 2nd entry" do
            book.import_from_csv("entries.csv")
            # Check the second entry
            entry_two = book.entries[1]
            check_entry(entry_two, "Bob", "555-555-5415", "bobbie.jackoff@yahoo.com")

        end

        it "imports the 3rd entry" do
            book.import_from_csv("entries.csv")
            # Check the third entry
            entry_three = book.entries[2]
            check_entry(entry_three, "Joe", "555-555-3660", "schmoe.dogg@gmail.com")
        end

        it "imports the 4th entry" do
            book.import_from_csv("entries.csv")
            # Check the fourth entry
            entry_four = book.entries[3]
            check_entry(entry_four, "Sally", "555-555-4646", "sally@sallystruts")
        end

        it "imports the 5th entry" do
            book.import_from_csv("entries.csv")
            # Check the fifth entry
            entry_five = book.entries[4]
            check_entry(entry_five, "Sussie", "555-555-2036", "sussie.q@ccr.com")
        end
    end

end






