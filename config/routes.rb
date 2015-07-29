Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:number", { :controller => "calculations", :action => "square" })
  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })
  get("/random/:min/:max", { :controller => "calculations", :action => "random" })
  get("/payment/:interest_rate/:num_years/:principal", { :controller => "calculations", :action => "loan_payment" })


    # get("/flexible/:move", { :controller => "game", :action => "flexible" })

end
