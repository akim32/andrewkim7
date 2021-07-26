# inside config/routes.rb  
Rails.application.routes.draw do  
  get("/", { :controller => "welcome", :action => "summary" })
end  