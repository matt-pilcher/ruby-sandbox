module Alerts
  def status
    puts "Verified"
  end
end

class User
  include Alerts
  attr_accessor :name , :email
  
  def initialize(name,email)
    @name = name
    @email = email
  end
  
  def info
    puts "User: #{self.name}" 
    puts "Email: #{self.email}"
  end
    
  
end

class Admin < User
  
  def logs
    puts "Additional content"
  end
end

user = User.new('Cedar', 'cedar@example.com')
user.info
user.status

admin = Admin.new('Birch', 'birch@example.com')
admin.info
admin.status
admin.logs
