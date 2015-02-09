Blog::App.controllers :sessions do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :new do
    render 'sessions/new'

  end
  
  post :create do
    user = User.authenticate(params[:email], params[:password])
    hash = { user_id: current_user,
             address:  request.ip}
    session = Session.new(hash)
    if user and session.save
      session[:user_id] = user.id
      flash[:notice] = "Logged in"
      redirect url('/')
    else
      redirect url('/') 
    end
  end
  
  get :destroy do
    log_out
    flash[:notice] = "Logged out!"
    redirect url('/')
  end

end
