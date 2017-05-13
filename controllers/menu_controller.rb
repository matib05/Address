require_relative "../models/address_book"

class MenuController
   attr_reader :address_book
   
   def initialize
      @address_book = AddressBook.new 
   end
   
   def main_menu
      puts "Main Menu - #{address_book.entries.count} entries"
      puts "1 - View all entries"
      puts "2 - View entry number n"
      puts "3 - Create an entry"
      puts "4 - Search for an entry"
      puts "5 - Import entries from a CSV"
      puts "6 - Exit"
      puts "Enter your selection"
      
      selection = gets.to_i
      
      puts "You selected #{selection}"
      
      case selection
         when 1
            system "clear"
            view_all_entries
            main_menu
         when 2
            system "clear"
            view_entry_number
            main_menu
         when 3
            #system "clear"
            create_entry
            main_menu
         when 4
            system "clear"
            search_entries
            main_menu
         when 5
            system "clear"
            read_csv
            main_menu
         when 6
            puts "Goodbye!"
            exit(0)
         else
            system "clear"
            puts "Sorry that is not a valid entry"
            main_menu
      end
   end
   
   
   
   
   def view_all_entries
         system "clear"
         address_book.entries.each do |entry|
            puts entry.to_s
            
            entry_submenu(entry)
         end
         
   end
   
   def view_entry_number
      system "clear"
      puts "Enter the entry number: "
      selection = gets.to_i
      selection -= 1
      system "clear"
      if address_book.entries[selection] and selection > 0
         puts address_book.entries[selection]
      else
         puts "Not a valid entry number"
      end

   end
      
   def create_entry
         system "clear"
         puts "New Address Book entry"
         print "Name: "
         name = gets.chomp
         print "Phone Number: "
         phone_number = gets.chomp
         print "Email: "
         email = gets.chomp
         
         address_book.add_entry(name, phone_number, email)
         
         system "clear"
         
         puts "New entry created"
         
   end
      
   def search_entries
   end
      
   def read_csv
   end
      
   def entry_submenu(entry)
      puts "n - next entry"
      puts "d - delete entry"
      puts "e - edit this entry"
      puts "m - return to main menu"
         
      selection = gets.chomp
         
      case selection
         when "n"
         when "d"
         when "e"
         when "m"
            system "clear"
            main_menu
         else
            system "clear"
            puts "#{selection} is not a valid input"
            entry_submenu(entry)
      end
   end
end