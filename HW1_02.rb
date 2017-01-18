#剪刀石頭布
#require 'pry'
#inding .pry

def game (a,b)
    if a == b
        puts"<><><><><>>   平手   <<><><><><>"
    elsif a==0 && b==1
        puts"<><>LOSE<>>   (輸)   <><>WIN><>>"
    elsif a==1 && b==2
        puts"<><>LOSE<>>   (輸)   <><>WIN><>>"
    elsif a==2 && b==0
        puts"<><>LOSE<>>   (輸)   <><>WIN><>>"
    else
        puts"<><>WIN><>>   (贏)   <><>LOSE<>>"
    end
end


begin   
    puts "=========================================="
    puts "     猜  拳  遊  戲  機"
    puts "=========================================="
    arr=["剪刀","石頭"," 布  "]
    puts "您出拳：（1）剪刀（2）石頭（3）布"
    me = gets.chomp.to_i-1
    npc = rand(0..2).to_i

    puts "++++YOU++++         ++++NPC++++"
    puts "===========         ==========="
    puts "    "+arr[me]+"     --VS--    "+arr[npc]+"    "
    puts "===========         ==========="

    game(me,npc)

    puts "是否繼續玩？ Y/N"
    input = gets.chomp.upcase

end while input!="N"