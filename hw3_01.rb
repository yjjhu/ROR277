#（第三週作業）井字遊戲Tic Tac Toe game
require 'pry'

class TICTACTOE
  attr_accessor :a, :c, :n, :b
  def initialize
    #初始化
    @a = (1..9).to_a
    @b = []
    @c = (1..9).to_a
  end
  @@theend = 0

  def go
    begin
      intro
      get_player
      decide_line
      if @@theend == 0 || @b.length <= 8
        get_npc
        decide_line
        decide_draw(@b.length)
      end
    end until @@theend == 1 || @b.length >= 9

  end

  def intro
    #印出井字
    puts "=========================================="
    puts "     井  字  遊  戲  機"
    puts "=========================================="
    puts "         │       │       "
    puts "    #{a[0]}    │   #{a[1]}   │   #{a[2]}   "
    puts "         │       │       "
    puts "  ───────┼───────┼───────"
    puts "         │       │       "
    puts "    #{a[3]}    │   #{a[4]}   │   #{a[5]}   "
    puts "         │       │       "
    puts "  ───────┼───────┼───────"
    puts "         │       │       "
    puts "    #{a[6]}    │   #{a[7]}   │   #{a[8]}   "
    puts "         │       │       "
  end

  def get_player
    #取得玩家選擇
    begin
      puts "請輸入您選擇的位置:"
      player=gets.chomp.to_i
      if !a.include?(player)
        puts"無此選擇！再輸入一次"
      end
    end until a.include?(player)
    a[player-1] = "O"
    @b << player
  end

  def get_npc
    #取得電腦的選擇
    npc=(@c-@b).sample
    puts "電腦選擇的位置:#{npc}" 
    a[npc-1]="X"
    @b << npc
  end

  def decide_line
    #判斷是否連線
    if a[0] == a[1] && a[1] == a[2]
      decide_winner(a[0])
      @@theend = 1
    elsif a[0] == a[3] && a[3] == a[6]
      decide_winner(a[0])
      @@theend = 1
    elsif a[0] == a[4] && a[4] == a[8]
      decide_winner(a[0])
      @@theend = 1
    elsif a[1] == a[4] && a[4] == a[7]
      decide_winner(a[1])
      @@theend = 1
    elsif a[2] == a[5] && a[5] == a[8]
      decide_winner(a[2])
      @@theend = 1
    elsif a[2] == a[4] && a[4] == a[6]
      decide_winner(a[2])
      @@theend = 1
    elsif a[3] == a[4] && a[4] == a[5]
      decide_winner(a[3])
      @@theend = 1
    elsif a[6] == a[7] && a[7] == a[8]
      decide_winner(a[6])
      @@theend = 1
    else
    end
  end

  def decide_winner(ans)
    if ans == "O"
      intro
      puts "你贏了！"
      continue
    else
      intro
      puts "你輸了！"
      continue
    end
  end

  def decide_draw(number)
    if number >= 9
      puts "此局平手！"
      continue
    end
  end

  def continue
    #判斷玩家是否要繼續下一輪
    puts "是否繼續玩？ Y/N"
    input = gets.chomp.upcase
    if input=="Y"
      @a = (1..9).to_a
      @b = []
      @c = (1..9).to_a
      self.go
    elsif input=="N"
      puts"謝謝！祝您有美好的一天！"
    else
      puts"輸入錯誤！再問一便！"
      continue
    end
  end

end
game = TICTACTOE.new
game.go