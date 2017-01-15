class Player
  def initialize(name)
    @name = name
  end 
end

# 人類玩家的類別
class Human < Player
  def get_gesture
    input = gets.chomp.to_i-1
    #if input<0 || input>2
    #    puts "出錯拳，請重新出拳："
    #    get_gesture
    #end
  end
end

# 電腦的類別
class Computer < Player
  def get_gesture
  	input = rand(0..2).to_i
  end
end


class RPS
  def initialize
    intro
  end 

  def intro
    #印出開場畫面，告訴玩家遊戲規則
    puts "=========================================="
    puts "     猜  拳  遊  戲  機"
    puts "=========================================="
    self.get_player_gestures
  end

  def decide (a,b)
    #邏輯判斷式
    if a==b
        puts show_message(a,b)
        puts"<><><><><>>   平手   <<><><><><>"
    elsif a==0 && b==1
        puts show_message(a,b)        
        puts"<><>LOSE<>>   (輸)   <><>WIN><>>"
    elsif a==1 && b==2
        puts show_message(a,b)
        puts"<><>LOSE<>>   (輸)   <><>WIN><>>"
    elsif a==2 && b==0
        puts show_message(a,b)
        puts"<><>LOSE<>>   (輸)   <><>WIN><>>"
    else
        puts show_message(a,b)
        puts"<><>WIN><>>   (贏)   <><>LOSE<>>"
    end
    self.continue
  end

  def get_player_gestures
    #取得玩家和電腦兩個物件的
    puts "請輸入您的名字："
    user_name=gets.chomp.to_s
    user=Human.new(user_name)
    puts "#{user_name}出拳：（1）剪刀（2）石頭（3）布"
    user_a=user.get_gesture
    
    npc=Computer.new("NPC")
    npc_b=npc.get_gesture

    self.decide(user_a,npc_b)  
  end

  def continue
    #判斷玩家是否要繼續下一輪
    puts "是否繼續玩？ Y/N"
    input = gets.chomp.upcase
    if input=="Y"
        self.intro
      elsif input=="N"
        puts"謝謝！祝您有美好的一天！"
      else
        puts"輸入錯誤！再問一便！"
        self.continue
    end
  end

  def show_message(show_a,show_b)
    #印出結果
    arr=["剪刀","石頭"," 布  "]
    puts "++++YOU++++         ++++NPC++++"
    puts "===========         ==========="
    puts "    "+arr[show_a]+"     --VS--    "+arr[show_b]+"    "
    puts "===========         ==========="
  end


end

# ------------Main Program Starts Here ---------------------
# 主程式只要一行即可
game = RPS.new