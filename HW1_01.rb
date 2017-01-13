#計算機
#require 'pry'
def computer (num1,num2,x)
        when "A" then puts "計算式：#{num1}+#{num2}=#{num1+num2}"
        when "B" then puts "計算式：#{num1}-#{num2}=#{num1-num2}"
        when "C" then puts "計算式：#{num1}*#{num2}=#{num1*num2}"
        when "D" then puts "計算式：#{num1}/#{num2}=#{num1/num2}"
    else
        puts "運算元錯誤！"
    end
end

begin
    puts "請輸入數字1"
    Unum1 = gets.chomp.to_i
    puts "請輸入數字2"
    Unum2 = gets.chomp.to_i
    puts "請輸入運算元（A）加（B）減（C）乘（D）除"
    Ux= gets.chomp.to_s
    computer(Unum1,Unum2,Ux)
    puts "是否繼續計算？ Y/N"
    input = gets.chomp

    if input=="Y" || input=="y"
        Unum1 = nil
        Unum2 = nil
        Ux = nil
    end
end while input!="N" && input!="n"