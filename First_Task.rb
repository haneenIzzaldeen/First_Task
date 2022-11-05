
# Here i defined a class that is a super class for all child classes (car , motorCycle , Van)
class Vehicles 
	@price 


	def initialize(price)
		@price = price
	end

	attr_accessor :price



#This method take input from the user
def rent_duration
	puts "Please, enter the rent duration to take a discount :"
	rental_days = gets.chomp.to_i
end


#This method responsible for checking the the number of days and give the user discount 
def checking_discount rental_days
	case rental_days

	when 3..5
		return 0.1

	when 6..10
		return 0.3

	else rental_days > 10
		return 0.4
	end

end


#This method will take the price and the number of days and calculate the total amount
def calculating_result price , discount
	result = price - (price * discount)
end


#This method will print the number of days and total amount  
def printing_result

	number_of_days = rent_duration 
	discount = checking_discount number_of_days
	result = calculating_result price , discount
	puts "*************************************"
	puts vhiecleType
	puts "The number of days is : #{number_of_days}"
	puts "The Amount after discount : #{result}"
	confirm_method
end   


#Here, will ask the user if he/she want to confirm
def confirm_method

	puts "Do you want to confirm : Yes or No"
	answer= gets.chomp
	case answer 
	when "Yes" , "yes"
		"Thank you"

	when "No" , "no"
		main_method
	end
end   
end



class Car < Vehicles
	def vhiecleType
		puts "Your vehicle is car"
	end
end


class MotorCycle < Vehicles
	def vhiecleType
		puts "Your vehicle is motorCycle"
	end
end


class Van < Vehicles
	def vhiecleType
		puts "Your vehicle is motorCycle"
	end
end



def main_method
	puts "please, choose one these options by entering 1 , 2 or 3 : "
	puts "*************************************"
	puts "1. car"
	puts "2. motorCycle"
	puts "3. van"
	vehicle_name = gets.chomp.to_i

	case vehicle_name										

	when 1
		car = Car.new(50)
		puts car.printing_result

	when 2
		motorCycle = MotorCycle.new(20)
		puts motorCycle.printing_result

	when 3 
		van = Van.new(70)
		puts van.printing_result

	end
end

main_method