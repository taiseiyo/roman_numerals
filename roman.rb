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

def num_to_roman_hundred(num)
  if num == 900
    print "CM"
  elsif num <= 800 && num >= 500
    num = num - 500
    if num != 0
      print "D" + "C" * (num / 100)
    else
      print "D"
    end

  elsif num == 400
    print "CD"

  elsif num <= 300 && num >= 100
    num = num - 100
    if num != 0
      print "C" + "C" * (num / 100)
    else
      print "C"
    end
  end
end

def num_to_roman_ten(num)
  if num == 90
    print "XC"
  elsif num <= 80 && num >= 50
    num = num - 50
    if num != 0
      print "L" + "X" * (num / 10)
    else
      print "L"
    end

  elsif num == 40
    print "XL"

  elsif num <= 30 && num >= 10
    num = num - 10
    if num != 0
      print "X" + "X" * (num / 10)
    else
      print "X"
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
    num_to_roman_hundred(num)
  elsif num <= 90 && num >= 10
    num_to_roman_ten(num)
  elsif num <= 10 && num >= 1 
    print roman_first[num-1]
    
  end
end

for i in ans_list do
  num_to_roman(i)
end

print "\n"
