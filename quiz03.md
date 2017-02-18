1. 請解釋 database.yml, routes.rb, 和 Gemifle 分別是什麼？ 他們分別在一個 Rails 專案裡的什麼位置？ 他們為什麼對一個 Rails 專案如此重要？  
  Ans:  
    * 專案/config/database.yml：Rails專案與database連結的設定檔。  
    * 專案/config/routes.rb：Rails專案管理路由以及相對應Controller Action 的檔案。  
    * 專案/Gemfile：宣告在Rails專案中使用的gem( Ruby 套件)，bundler會依此檔案安裝套件，每次執行bundle後會產出Gemfile.lock的檔。  

2. MVC 架構裡的 M, V, 和 C 分別代表什麼？   
  Ans:  
    M：Model  
    V：View  
    C：Controller  

3. 請解釋 CRUD 是哪四個字的縮寫？  
  Ans:  
    Create, Read, Update and Delete  

4. 請問在 routes.rb 裡面加入以下程式碼會產生出哪一些 url？ (提示：在 browser 輸入```http://localhost:3000/rails/info/routes```)
	```ruby
	resources :users
	```  
  Ans:  
    get 'users' => 'users#index'  
    post 'users' => 'users#create'  
    get 'users' => 'users#new', as: :new_user  
    get 'user/:id/edit' => 'user#edit', as: :edit_user  
    get 'users/:id' => 'users#show', as: :user  
    put 'user/:id' => 'user#update'  
    patch 'user/:id' => 'user#update'  
    delete 'users/:id' => 'user#destroy'  
  
5. 請解釋 model 檔案和 migration 檔案的差別？  
  Ans:  
    Model檔：顯示資料表間的關聯、行為、商業邏輯等。  
    Migration檔：免SQL語法直接建立資料庫及其欄位。    

6. 若今天發現一個 migration 檔寫錯，請問我應該用什麼指令回復到上一個版本的 migration? 
  Ans:  
    rake db:rollback

7. 假設今天
	* 我要在資料庫裡產出一個叫 group 的資料表
	* 裡面包括的欄位名稱和相對應的資料型別是： 
		**name (string)**,
		**description (text)**,
		**members (integer)**
    * 請寫出一個能產生出以上需求的 migration 檔  
  Ans:  
    ```ruby
    class CreateOrders < ActiveRecord::Migration[5.0]
      def change
        create_table :groups do |t|  
          t.string :name  
          t.text :description  
          t.integer :member  
        end  
      end
    end
    ```  

8. 請解釋什麼是 ActiveRecord?  
  Ans:  
    ActiveRecord是SQL語言與Ruby語言的翻譯官，
    能夠自動把資料表物件化，讓開發者不須使用SQL語法，
    直接透過物件導向的方式建立資料庫。  

9. 若今天需要為 ```Project``` 和 ```Issue``` 這兩個 Model 建立一對多的關係，請寫出實作上所需要的 migratiion 和 model 檔案   
  Ans:  
    ```ruby
    class Project < ApplicationRecord
      has_many :issues
    end
    class Issue < ApplicationRecord
      belongs_to :projects
    end
    ```

10. 若今天我有以下 model 檔：

  ```ruby
  class User < ActiveRecord::Base
    has_many :groups_users
    has_many :groups, through: :groups_users 
  end
  ```  
  請寫出和這個 model 檔相關連的 model 檔，以及這些 model 檔所需要的資料庫欄位
  Ans:  

  ```ruby
  class Group < ActiveRecord::Base
    has_many :groups_users
    has_many :users, through: :groups_users 
    validates :group_name, presence: true
  end
  class Group_user < ActiveRecord::Base
    belongs_to :user
    belongs_to :group
    validates :user_id, presence: true
    validates :group_id, presence: true
  end

  ```  


11. 延續第10題，如果需要讓一個叫 "Bob" 的使用者產生一個名字叫做 "Rails is Fun" 的社團，應該如何在 rails console 裡實作出來？  
  Ans:  
  ```ruby
    User.create(name: "Bob")
    Group.creat(group_name: "Rails is Fun")
    Group_user.create(user_id: "1", group_id: "1")

  ```

12. 延續第11題，請寫一段程式碼確保使用者在建立新社團時社團名不可以是空白，而且不能超過50個字  
  Ans:  
  ```ruby
  class Group < ActiveRecord::Base
    validates :group_name, presence: true
    validates :group_name, length: { maximum: 100 }
  end


  ``` 