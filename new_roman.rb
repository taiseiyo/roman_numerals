num = ARGV[0]

def divide_num(num)
  ans_list,count = [],0
  while num > 0
    tmp = num % 10
    ans_list.push(tmp * (10 ** count))
    num = num / 10
    count = count + 1
  end
  return ans_list.reverse
end

ans_list,count = divide_num(num.to_i),0


def num_to_roman_each(num, f_str, s_str, t_str, fo_str)
  f_num = num.to_s[0].to_i
  if f_num == 9
    print f_str
    
  elsif f_num <= 8 && f_num >= 5
    if (f_num - 5) != 0
      print s_str + t_str * (f_num - 5)      
    else
      print s_str
    end

  elsif f_num == 4
    print fo_str
    
  elsif f_num <= 3 && f_num >= 1
    if (f_num - 1) != 0
      print t_str + t_str * (f_num - 1)
    else
      print t_str
    end
    
  end
end
    
def num_to_roman(num)
  roman_first = ['I','II','III','IV','V','VI','VII','VIII','IX','X']

  if num >= 1000
    tmp = num / 1000
    x = "M" * tmp
    print x

  elsif num <= 900 && num >= 100
    num_to_roman_each(num, "CM", "D", "C", "CD")
    
  elsif num <= 90 && num > 10
    num_to_roman_each(num, "XC", "L", "X", "XL")
    
  elsif num <= 10 && num >= 1 
    print roman_first[num-1]
    
  end
end

for i in ans_list do
  num_to_roman(i)
end

print "\n"
