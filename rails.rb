# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

def hello_world(language)
  if language == 'en'
    puts 'Hello World!'
  elsif language == 'de'
    puts 'Hallo Welt!'
  elsif language == 'ru'
    puts 'Privet Mir!'
  elsif language == 'es'
    puts 'Hola Mundo!'
  else
    puts 'Language not recieved, defaulting to english. Hello World!'
  end
end

puts hello_world('language')
puts hello_world('de')
puts hello_world('ru')


# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

def assign_grade n
  case n
  when 100
    "A+"
  when 90...100
    "A"
  when 80...90
    "B"
  when 70...80
    "C"
  when 60...70
    "D"
  when 0...60
    "F, you suck..."
  end
end
puts assign_grade 90
puts assign_grade 55
puts assign_grade 89



# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.

def assign_grade n
  case n
  when 100
    "A+"
  when 90...100
    "A"
  when 80...90
    "B"
  when 70...80
    "C"
  when 60...70
    "D"
  when 0...60
    "F, you suck..."
  else
    "How did you manage to mess up this badly?"
  end
end
puts assign_grade 90
puts assign_grade 55
puts assign_grade 89
puts assign_grade "Q"



# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer(number, name)
  if number == 1
    puts "#{number}, #{name}"
  elsif number == 0 || number > 1
    puts "#{number}, #{name}s"
  else
    puts "A mistake has been made"
  end
end

puts pluralizer(1, 'cat')
puts pluralizer(5, 'parrot')
puts pluralizer(0, 'dog')
puts pluralizer(9999, 'monkey')


# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.

def pluralizer(number, name)
  if number == 1
    "#{number}, #{name}"
  elsif name == "child"
    "#{number}, #{name}ren"
  elsif name == "goose"
    "#{number}, geese"
  elsif name == "person"
    "#{number}, people"
  else
    "#{number}, #{name}s"
  end
end

puts pluralizer(2, 'child')
puts pluralizer(3, 'person')
puts pluralizer(4, 'child')
puts pluralizer(5, 'goose')
