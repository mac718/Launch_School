#First Car
car = {type: 'sedan', color: 'blue', mileage: 80_000}

#Adding the Year
car[:year] = 2003

#Broken Odometer
car.delete(:mileage)

#What Color
puts car[:color]

#Labeled Numbers
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |k, v| puts "A #{k} number is #{v}." }

#Divided by Two
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.values.map { |value| value / 2 }

p half_numbers

#Low, Medium, or High?
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select { |key, value| value < 25 }

p low_numbers

#Low or Nothing
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers

#Multiple Cars
{car: {type: 'sedan', color: 'blue', year: 2003}, truck: {type: 'pickup', color: 'red', year: 1998}

#Which Collection
car = [[:type,  'sedan'], [:color, 'blue'], [:year,  2003]]