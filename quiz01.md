###小考一

1. 請說明 Fixnum (整數) 和 Float (浮點數) 之間的差異？  
  
  Ans:  
  Fixnum (整數)為不含小數點的數字，Float (浮點數)為含小數點的數字。  
  當不同的整數之間互相運算（加減乘除）時，所得到的結果也會是整數。  
    
    
2. 今天有兩個字串：  
  ```ruby 
  str1 = "Hallo Welt!" 
  str2 = " NTU Rails 261!"
  ```
  請說明以下兩個印出字串的方式的不同處：  
  ```ruby
  puts str1 + str2
  puts "#{str1}#{str2}"
  ```  
    
  Ans：  
  使用「+」連接兩個字串的方式較耗記憶體資源。通常都使用字串內差#{}的方式串接字串。
    

3. 請解釋 array 和 hash 的不同處  
  
  Ans：  
  array可以存放不同形別（字串，數字，陣列...）的資料，且存入的值可任易變動。  
  hash用於存入不能被改變的KEY值。
  

4. 請用一行程式碼從 [1, "a string", 3.14, [1,2,3,4]] 這個陣列找出所有非字串的值   
  
  Ans：  
  程式碼如下  
  ```ruby
  arr.map{|x| puts x.class==String ? "#{x}," : ""}
  ```  

  
5. 請用一行程式碼把一個內容為整數 1 到 100 的陣列裡所有的值加上 2  
  
  Ans：  
  程式碼如下：  
  ```ruby
  (1..100).to_a.map!{|x| x+2}
  ```  
    

6. 請寫出以下兩行程式碼迴傳的值，並解釋他們呼叫的方法差別為何：  
  ```ruby
  [1, 2, 3, 3].uniq
  [1, 2, 3, 3].uniq!
  ```  
  Ans：  
  皆回傳出[1, 2, 3]，但有加!的會直接改變原有陣列的結果。  
  

7. 請列出兩種產出亂數的方法   
  
  Ans：  
  （1）rand(1..100)  
  （2）(1..100).to_a.sample  


8. 以下這段程式碼：
  ```ruby
  ((1 > 3)&&(true == true))||(!!!false)
  ```
  會執行出什麼結果？ 請試試不用 irb 算出結果  
  
  Ans：  
  = ((false)且(true))或(true)  
  = (false)或(true)  
  = true  


9. 請問 binding.pry 是什麼？ 要如何使用它？  
  
  Ans：  
  binding.pry是除錯工具pry停止的點。  
  在程式碼上方「require 'pry'」之後，即可在程式碼任一行下「binding.pry」來測式程式。  
  

10. 下面的一段程式碼，請嘗試用其他方法把 if...else...end 簡化成一行
  ```ruby
  var = 5

  if var >= 5
  	return "var is greater than or equal to 5"
  else
  	return "var is less than 5"
  end
  ```  
  Ans：  
  ```ruby  
  var = 5  
  puts var >= 5 ? "var is greater than or equal to 5" : "var is less than 5"
  ```  


11. 請列出兩種不同的 hash 寫法  
  Ans：  
  ```ruby  
  #第一種寫法  
  person = {
    :name => "Momo",
    :age => 18,
  }
  
  #第二種寫法
  person = {
    name: "Momo",
    age: 18,
  }  
  ```  
    
