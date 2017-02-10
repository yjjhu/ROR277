1. 請用簡單的方式敘述以下每一行程式碼：

  ```ruby 
  a = 1 
  @a = 2
  @@a = 5
  user = User.new
  user.name
  user.name = "Joe"
  ```  
  Ans:  
  a = 1  #a是區域變數（僅限所見區域使用），值是1。   
  @a = 2 #@a是實例變數（僅限特定物件使用），值為2。  
  @@a = 5#@@是類別變數（可給類別或類別所屬物件使用），值為5。  
  user = User.new   #用new創出User類別物件。  
  user.name	    #使用name實例方法。  
  user.name = "Joe" #將name實例變數存入「Joe」值。  

2. 什麼是 module? 請寫一段程式碼說明一個 class 要如何使用一個 module 裡面的 method?  
  Ans:  
  module（模組）：可定義許多方法的工具箱，裡面的方法僅可被class（類別）使用，稱為mixin module。  

  ```ruby
  module Speak
    def talk
      puts "wow wow wow"
    end
  end

  class Person  
    attr_accessor :name
    def initialize(name)
      @name = name
    end

    include Speak
  end
  ```
3. 請說明 class variable 和 instance variable 之間的差別?  
  Ans:  
  class variable（類別變數）：以 @@ 開頭，可給類別或類別所屬物件使用。  
  instance variable（實例變數）：以 @ 開頭，僅限特定物件使用，除非透過attr_accessor方法，否則無法直接存取實例變數。

4. 請說明 class method 和 instance method 之間的差別?  
  Ans:
  class method（類別方法）：給class使用，作為class的屬性與行為，宣告在class內方法並且在前加上「self.」。  
  instance method（實例方法）：僅於創立class新物件後使用，宣告在class內的方法。  

5. 如果今天我為一個叫 User 的 class 產生一個新物件的方式是:
  ```ruby
  User.new("Bob", "male", "Engineer")
  ```  
  請寫出 User class 的 initialize method  
  Ans:
  ```ruby
  class User
    attr_accessor :name, :gender, :job

    def initialize(name, gender, job)
      @name = name
      @gender = gender
      @job = job
    end
  end
  ```

6. 在：
  A.  一個 class 裡，method 外面
  B.  一個 class 裡，instance method 裡
  self 分別是指向什麼?  
  Ans:  
  (A)class本身  
  (B)呼叫instance method的物件    

7. attr_accessor 的功能是什麼，它和 attr_reader、attr_writer 之間的差別是什麼？  
  Ans:  
  attr_accessor：宣告後可直接「讀寫」實例變數。（自動創getter 和 setter method）  
  attr_reader：宣告後僅可直接「讀」實例變數。（自動創getter method）  
  attr_writer：宣告後僅可直接「寫」實例變數。（自動創setter method）  

8. 請說明 public 和 private method 之間的不同
  Ans:  
  public method：所有class的物件都可用。  
  private method：僅能於class內使用。  

9. 請說明 Inheritance 和 Module 之間的差別，它們分別是用於哪些情況？ 請舉例說明
  Ans:  
  Inheritance從屬關係繼承意義。例：蝙蝠屬於（繼承）哺乳類之一。  
  Module代表行為。例如：蝙蝠會飛，飛是蝙蝠的行為（不是所有哺乳類都會飛）。  

10. 若今天有一個 class 有 include 一個 module，他的 parent class 和 sub class 是否可以使用該 module 裡的 method?
  Ans:  
  其parent class不可用，其sub class有繼承故可用。  

11. 請間單說明什麼是 Relational Database，什麼是 SQL
  Ans:  
  Relational Database資料表之間具有關連性（一對一、一對多、多對多）的資料庫。
  SQL對資料庫進行CRUD的語法。
  