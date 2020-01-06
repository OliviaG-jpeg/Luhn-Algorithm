module Luhn
  def self.is_valid?(number)
    #write your solution here
    return number.to_s.scan(/\d/).map(&:to_i).reverse.map.with_index(1) { |e, i|  
      if i % 2 == 0 then
        num = (e * 2)
        num -= 9 if num > 9
        num
      else
        e
      end
    }.sum % 10 == 0
  end
end

# 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
# 1 2 3 4 5 6 7 8 9 10 11 12 13 14 
#step 1 - break the credit card into its individual digits
#step 2 - start from the right, double every second digit (i.e., digit 2, 4, 6 etc.)
#step 3 - if the doubled value is greater than or equal to 10,
# take the value and subtract 9 from it
#step 4 - sum the digits
#step 5 - if the sum is divisible by 10, it's a valid number. otherwise it's invalid
