Rails.application.routes.draw do
  get("/", {:controller=>"calc",:action=>"homepage"})
  get("/square/new", {:controller=>"calc",:action=>"square"})
  get("/square_root/new", {:controller=>"calc",:action=>"square_root"})
  get("/payment/new", {:controller=>"calc",:action=>"payment"})
  get("/random/new", {:controller=>"calc",:action=>"random"})
end
