#(第一週作業01）簡易計算機
#require 'pry'
#inding .pry

def computer (num1,num2,x)
  case x
    when "A" then puts "計算式：#{num1}+#{num2}=#{num1+num2}"
    when "B" then puts "計算式：#{num1}-#{num2}=#{num1-num2}"
    when "C" then puts "計算式：#{num1}*#{num2}=#{num1*num2}"
    when "D" then puts "計算式：#{num1}/#{num2}=#{num1/num2}"
  else
    puts "運算元錯誤！"
  end
end

begin
  puts "=========================="
  puts "     簡  易  計  算  機"
  puts "=========================="
  puts "請輸入數字1"
  unum1 = gets.chomp.to_f
  puts "請輸入數字2"
  unum2 = gets.chomp.to_f
  puts "請輸入運算元（A）加（B）減（C）乘（D）除"
  ux= gets.chomp.to_s
  computer(unum1,unum2,ux)
  puts "是否繼續計算？ Y/N"
  input = gets.chomp.downcase
end while input!="n"