require 'artii'
require 'terminal-table'

# I want to buy a coffee from a local cafe.
# This involve 2 classes; Cafe and Person.

class Cafe
  # Cafe has a location, has a cafe name, and has a coffee menu
  attr_reader :cafe_location,
              :cafe_name,
              :coffee_menu,
              :coffee_price,
              :coffee_extras #getter
  attr_writer   #setter
  attr_accessor #getter & setter

  def initialize(cafe_location,
                 cafe_name,
                 coffee_menu,
                 coffee_price,
                 coffee_extras)

    #getter || setter; not req' to def again after initialized
    @cafe_location = cafe_location    #setter
    @cafe_name = cafe_name            #setter
    @coffee_menu = coffee_menu        #setter
    @coffee_price = coffee_price      #setter
    @coffee_extras = coffee_extras    #setter
  end

  def sell_price()

      # In this case, set up a starting point for the loop
      total_option = nil
      while total_option != 'T1' ||
            total_option != 'T2' ||
            total_option != 'T3' ||
            total_option != 'T4' ||
            total_option != 'T5' ||
            total_option != 'T6' ||
            total_option != 'T7' ||
            total_option != 'T8' ||
            total_option != 'T9' ||
            total_option != 'T10' ||
            total_option != 'T11' ||
            total_option != 'T12' ||
            total_option != 'T13' ||
            total_option != 'T14' ||
            total_option != 'T15' ||
            total_option != 'T16' do

      # We ask the customer to order coffee from the coffee menu
      puts "Select the following to calculate the total cost!"

      puts "'T1' for Latte without extras"
      puts "'T2' for Cappucino without extras"
      puts "'T3' for Long Black without extras"
      puts "'T4' for Batch Brew without extras"
      puts "'T5' for Latte with sugar"
      puts "'T6' for Latte with milk"
      puts "'T7' for Latte with extra shots"
      puts "'T8' for Latte in extra large size"
      puts "'T9' for Cappucino with sugar"
      puts "'T10' for Cappucino with milk"
      puts "'T11' for Cappucino with extra shots"
      puts "'T12' for Cappucino in extra large size"
      puts "'T13' for Long Black with sugar"
      puts "'T14' for Long Black with extra shots"
      puts "'T15' for Long Black in extra large size"
      puts "'T16' for Batch in extra large size"
      print "> "
      total_option = gets.chomp.upcase

      #Inner case for coffee option
      case total_option

      when 'T1'
        puts "Your order comes to AUD$ #{@coffee_price["Latte"]}"
        break

      when 'T2'
        puts "Your order comes to AUD$ #{@coffee_price["Cappucino"]}"
        break

      when 'T3'
        puts "Your order comes to AUD$ #{@coffee_price["Long Black"]}"
        break

      when 'T4'
        puts "Your order comes to AUD$ #{@coffee_price["Batch Brew"]}"
        break

      when 'T5'
        puts "Your order comes to AUD$ #{@coffee_price["Latte"] +
        @coffee_extras["Sugar"]}"
        break

      when 'T6'
        puts "Your order comes to AUD$ #{@coffee_price["Latte"] +
        @coffee_extras["Milk"]}"
        break

      when 'T7'
        puts "Your order comes to AUD$ #{@coffee_price["Latte"] +
        @coffee_extras["Shots"]}"
        break

      when 'T8'
        puts "Your order comes to AUD$ #{@coffee_price["Latte"] +
        @coffee_extras["Large"]}"
        break

      when 'T9'
        puts "Your order comes to AUD$ #{@coffee_price["Cappucino"] +
        @coffee_extras["Sugar"]}"
        break

      when 'T10'
        puts "Your order comes to AUD$ #{@coffee_price["Cappucino"] +
        @coffee_extras["Milk"]}"
        break

      when 'T11'
        puts "Your order comes to AUD$ #{@coffee_price["Cappucino"] +
        @coffee_extras["Shots"]}"
        break

      when 'T12'
        puts "Your order comes to AUD$ #{@coffee_price["Cappucino"] +
        @coffee_extras["Large"]}"
        break

      when 'T13'
        puts "Your order comes to AUD$ #{@coffee_price["Long Black"] +
        @coffee_extras["Sugar"]}"
        break

      when 'T14'
        puts "Your order comes to AUD$ #{@coffee_price["Long Black"] +
        @coffee_extras["Shots"]}"
        break

      when 'T15'
        puts "Your order comes to AUD$ #{@coffee_price["Long Black"] +
        @coffee_extras["Large"]}"
        break

      when 'T16'
        puts "Your order comes to AUD$ #{@coffee_price["Batch Brew"] +
        @coffee_extras["Large"]}"
        break

      else
        puts "Please try to select again!"

      end # End of case loop

    end # End of while loop

  end  # End of sell_price method

end # End of class Cafe

class Customer
  # Customer has a name
  attr_reader :customer_name #getter
  attr_writer   #setter
  attr_accessor #getter & setter

  def initialize(customer_name)
    #getter || setter; not req' to def again after initialized
    @customer_name = customer_name      #setter
  end

  def order_coffee()

      while true
      puts "Please select one of the following"
      puts "'Y' for Yes, 'N' to Quit"

      # prompt the customer if he/she wants to continue
      print "> "
      proceed_option = gets.chomp.upcase

      # Outer case
      case proceed_option

      when 'Y'
        sleep 1

        # In this case, set up a starting point for the loop
        coffee_option = nil
        while coffee_option != 'C1' ||
              coffee_option != 'C2' ||
              coffee_option != 'C3' ||
              coffee_option != 'C4' do

        # We ask the customer to order coffee from the coffee menu
        puts "What would you like?"

        puts "'C1' for Latte, 'C2' for Cappucino, 'C3' for Long Black,\
 'C4' for Batch Brew"
        print "> "
        coffee_option = gets.chomp.upcase

        #Inner case for coffee option
        case coffee_option

        when 'C1'

          puts "You have ordered a cup of Latte."
          break

        when 'C2'
          puts "You have ordered a cup of Cappucino."
          break

        when 'C3'
          puts "You have ordered a cup of Long Black."
          break

        when 'C4'
          puts "You have ordered a Batch Brew."
          break

        else
          puts "Please select again from the coffee menu!"

        end # End of inner case statement
      end # End of while loop

      when 'N'
        puts "Thanks for coming in! Have a great day"
        exit(0)

      else
        puts "Sorry, I can't get it!"

      end # End of outer case statement

      break

      end # End of outer while loop

  end # End of order_coffee method

  def add_extras()

    extras_option = nil
    while extras_option != 'E1' ||
          extras_option != 'E2' ||
          extras_option != 'E3' ||
          extras_option != 'E4' ||
          extras_option != 'E0' do

    puts "Do you want any extras with it?"
    puts "'E1' for Sugar, 'E2' for Milk, 'E3' for Shots, 'E4' for Go Large,\
 'E0' for no extras"
    print "> "
    extras_option = gets.chomp.upcase

    #Inner case for extras
    case extras_option

    when 'E1'
    puts "Your cup of coffee will have added sugar."
    break
    # puts "Your order comes to AUD$ #{cafe_info.coffee_price["Latte"] + cafe_info.coffee_extras["Sugar"]}"

    when 'E2'
      puts "Your cup of coffee will have added milk."
      break
      # puts "Your order comes to AUD$ #{cafe_info.coffee_price["Latte"] + cafe_info.coffee_extras["Milk"]}"

    when 'E3'
      puts "Your cup of coffee will have added shots of beans."
      break
      # puts "Your order comes to AUD$ #{cafe_info.coffee_price["Latte"] + cafe_info.coffee_extras["Shots"]}"

    when 'E4'
      puts "Your cup of coffee will be extra large in size."
      break
      # puts "Your order comes to AUD$ #{cafe_info.coffee_price["Latte"] + cafe_info.coffee_extras["Large"]}"

    when 'E0'
      puts "We will just get you a standard cup of coffee with no extras."
      break

    else
      puts "Sorry, do you want any extras for your coffee?"
      puts "Please select extras again from the coffee menu!"
    end

    end # End of while loop

  end # End of add_extras method

end # End of class Customer

# Additional method to clear console
def clearConsole()
    system "clear" or system "cls"
end

###############################################################
#Atm Machine Start up
a = Artii::Base.new :font => 'banner'
puts a.asciify('Code Black')
###############################################################

###############################################################
# Now Create new instance object for both classes

# class Cafe
# Value for cafe location, cafe name, coffee menu
cafe_info = Cafe.new("Brunswick",
                     "Code Black",
                     ["Latte", "Cappucino", "Long Black", "Batch Brew"],
                     {"Latte" => 4.00, "Cappucino" => 5.00,
                      "Long Black" => 5.00, "Batch Brew" => 6.00},
                     {"Sugar" => 0.00, "Milk" => 1.00, "Shots" => 1.50,
                      "Large" => 0.50})
                      # 5 values for 5 argv

# class Customer
name_of_customer = Customer.new("Kevin") # 1 value added for 1 argv
##############################################################

# Cafe operator servicing customer
puts "Welcome to #{cafe_info.cafe_location} #{cafe_info.cafe_name}."

sleep 3

# Cafe operator informing customer about coffee availability
puts "Please have a look at our menu, we have\
 #{cafe_info.coffee_menu.join(", ")}." # use join method to present neatly

# Cafe operator provide customer the coffee menu
puts "Here's the coffee menu for the day"

# Table format in terminal using 'terminal-table' gem
rows = []
# Headings
table = Terminal::Table.new :title => "Code Black Coffee Menu", :rows => rows
table << ["Coffee", {:value => "($) Price", :alignment => :center}]
table << :separator

# Actual Menu
table << ["#{cafe_info.coffee_menu[0]}",
{:value => "#{cafe_info.coffee_price["Latte"]}", :alignment => :center}]

table << ["#{cafe_info.coffee_menu[1]}",
{:value => "#{cafe_info.coffee_price["Cappucino"]}", :alignment => :center}]

table << ["#{cafe_info.coffee_menu[2]}",
{:value => "#{cafe_info.coffee_price["Long Black"]}", :alignment => :center}]

table << ["#{cafe_info.coffee_menu[3]}",
{:value => "#{cafe_info.coffee_price["Batch Brew"]}", :alignment => :center}]

table << :separator
table << ["Extras", {:value => "($) Addtional Charge", :alignment => :center}]
table << :separator

table << ["#{cafe_info.coffee_extras.key(0.00)}",
{:value => "#{cafe_info.coffee_extras["Sugar"]}", :alignment => :center}]

table << ["#{cafe_info.coffee_extras.key(1.00)}",
{:value => "#{cafe_info.coffee_extras["Milk"]}", :alignment => :center}]

table << ["#{cafe_info.coffee_extras.key(1.50)}",
{:value => "#{cafe_info.coffee_extras["Shots"]}", :alignment => :center}]

table << ["#{cafe_info.coffee_extras.key(0.50)}",
{:value => "#{cafe_info.coffee_extras["Large"]}", :alignment => :center}]

# Display coffee menu to customer
table.style = {:border_x => "=", :border_i => "x"}
puts table

sleep 3

clearConsole()

puts "Hi Sir, would you like to order any coffee from the menu?"

# Allow customer to choose coffee using order coffee method
puts name_of_customer.order_coffee

# Allow customer to add extras using add extras method
puts name_of_customer.add_extras

# We can ask for the person name
puts "Can I grab your name please?"

puts "My name is #{name_of_customer.customer_name}."

# We can calculate the coffee price
puts cafe_info.sell_price

puts "Thanks #{name_of_customer.customer_name}."
