
NUMBER_WORD_MAPPING = {'crore'     => 1_00_00_000,
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
    "crore"     =>  (number.to_s.length == 8 || number.to_s.length == 9) && (number / NUMBER_WORD_MAPPING['crore']) > 0,
    "lakhs"     =>  (number.to_s.length == 6 || number.to_s.length == 7) && (number / NUMBER_WORD_MAPPING['lakhs']) > 0,
    "thousand"  =>  (number.to_s.length == 4 || number.to_s.length == 5) && (number / NUMBER_WORD_MAPPING['thousand']) > 0,
    "hundred"   =>  number.to_s.length == 3 && (number / NUMBER_WORD_MAPPING['hundred']) > 0,
    'one'       =>  number == NUMBER_WORD_MAPPING['one'],      
    'two'       =>  number == NUMBER_WORD_MAPPING['two'],      
    'three'     =>  number == NUMBER_WORD_MAPPING['three'],    
    'four'      =>  number == NUMBER_WORD_MAPPING['four'],     
    'five'      =>  number == NUMBER_WORD_MAPPING['five'],     
    'six'       =>  number == NUMBER_WORD_MAPPING['six'],      
    'seven'     =>  number == NUMBER_WORD_MAPPING['seven'],    
    'eight'     =>  number == NUMBER_WORD_MAPPING['eight'],    
    'nine'      =>  number == NUMBER_WORD_MAPPING['nine'],     
    'ten'       =>  number == NUMBER_WORD_MAPPING['ten'],      
    'eleven'    =>  number == NUMBER_WORD_MAPPING['eleven'],   
    'twelve'    =>  number == NUMBER_WORD_MAPPING['twelve'],   
    'thirteen'  =>  number == NUMBER_WORD_MAPPING['thirteen'], 
    'fourteen'  =>  number == NUMBER_WORD_MAPPING['fourteen'], 
    'fifteen'   =>  number == NUMBER_WORD_MAPPING['fifteen'],  
    'sixteen'   =>  number == NUMBER_WORD_MAPPING['sixteen'],  
    'seventeen' =>  number == NUMBER_WORD_MAPPING['seventeen'],
    'eighteen'  =>  number == NUMBER_WORD_MAPPING['eighteen'], 
    'nineteen'  =>  number == NUMBER_WORD_MAPPING['nineteen'], 
    'twenty'    =>  (number - (number % 10)) == NUMBER_WORD_MAPPING['twenty'],   
    'thirty'    =>  (number - (number % 10)) == NUMBER_WORD_MAPPING['thirty'],  
    'fourty'    =>  (number - (number % 10)) == NUMBER_WORD_MAPPING['fourty'],  
    'fifty'     =>  (number - (number % 10)) == NUMBER_WORD_MAPPING['fifty'],   
    'sixty'     =>  (number - (number % 10)) == NUMBER_WORD_MAPPING['sixty'],   
    'seventy'   =>  (number - (number % 10)) == NUMBER_WORD_MAPPING['seventy'], 
    'eighty'    =>  (number - (number % 10)) == NUMBER_WORD_MAPPING['eighty'],  
    'ninety'    =>  (number - (number % 10)) == NUMBER_WORD_MAPPING['ninety']
  }

  h.key(true)
end

def get_full_word(number,word=[])
  return nil if number <= 0
  
  if number >= 100
    w = get_word(number)
    get_full_word(number / NUMBER_WORD_MAPPING[w],word)
    word << w
    number = number - (number / NUMBER_WORD_MAPPING[w] * NUMBER_WORD_MAPPING[w])
    get_full_word(number,word)
  else
    w = get_word(number)
    word << w
    number -= NUMBER_WORD_MAPPING[w]
    get_full_word(number,word)
  end

  word.compact.join(' ')
end

puts get_full_word(ARGV[0].to_i)
