# require 'awesome_print'

ARR = {'crore'     => 1_00_00_000,
       'lakhs'     => 1_00_000,
       'thousand'  => 1_000,
       'hundred'   => 100,
       'one'       => 1,
       'two'       => 2,
       'three'     => 3,
       'four'      => 4,
       'five'      => 5,
       'six'       => 6,
       'seven'     => 7,
       'eight'     => 8,
       'nine'      => 9,
       'ten'       => 10,
       'eleven'    => 11,
       'twelve'    => 12,
       'thirteen'  => 13,
       'fourteen'  => 14,
       'fifteen'   => 15,
       'sixteen'   => 16,
       'seventeen' => 17,
       'eighteen'  => 18,
       'nineteen'  => 19,
       'twenty'    => 20,  
       'thirty'    => 30, 
       'fourty'    => 40, 
       'fifty'     => 50, 
       'sixty'     => 60, 
       'seventy'   => 70, 
       'eighty'    => 80, 
       'ninety'    => 90
      }

def get_word(number)
  h = {
    "crore"     =>  (number.to_s.length == 8 || number.to_s.length == 9) && (number / 1_00_00_000) > 0,
    "lakhs"     =>  (number.to_s.length == 6 || number.to_s.length == 7) && (number / 1_00_000) > 0,
    "thousand"  =>  (number.to_s.length == 4 || number.to_s.length == 5) && (number / 1_000) > 0,
    "hundred"   =>  number.to_s.length == 3 && (number / 100) > 0,
    'one'       =>  number == 1,
    'two'       =>  number == 2,
    'three'     =>  number == 3,
    'four'      =>  number == 4,
    'five'      =>  number == 5,
    'six'       =>  number == 6,
    'seven'     =>  number == 7,
    'eight'     =>  number == 8,
    'nine'      =>  number == 9,
    'ten'       =>  number == 10,
    'eleven'    =>  number == 11,
    'twelve'    =>  number == 12,
    'thirteen'  =>  number == 13,
    'fourteen'  =>  number == 14,
    'fifteen'   =>  number == 15,
    'sixteen'   =>  number == 16,
    'seventeen' =>  number == 17,
    'eighteen'  =>  number == 18,
    'nineteen'  =>  number == 19,
    'twenty'    =>  (number - (number % 10)) == 20,  
    'thirty'    =>  (number - (number % 10)) == 30, 
    'fourty'    =>  (number - (number % 10)) == 40, 
    'fifty'     =>  (number - (number % 10)) == 50, 
    'sixty'     =>  (number - (number % 10)) == 60, 
    'seventy'   =>  (number - (number % 10)) == 70, 
    'eighty'    =>  (number - (number % 10)) == 80, 
    'ninety'    =>  (number - (number % 10)) == 90
  }

  # ap h
  
  h.key(true)
end

def get_full_word(number,word=[])
  return nil if number <= 0
  
  if number >= 100
    w = get_word(number)
    get_full_word(number / ARR[w],word)
    #puts w
    word << w
    number = number - (number / ARR[w] * ARR[w])
    get_full_word(number,word)
  else
    w = get_word(number)
    #puts w
    word << w
    number -= ARR[w]
    get_full_word(number,word)
  end

  word.compact.join(' ')
end
