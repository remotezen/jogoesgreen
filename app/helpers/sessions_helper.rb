# Helper methods defined here can be accessed in any controller or view in the application

module Blog
  class App
    module SessionsHelper
      # def simple_helper_method
      # ...
      # end
      def current_user
        @current_user ||=User.find(session[:user_id]) if session[:user_id]
      end
      
      def current_user?(user)
        current_user == user
      end
     
      def logged_in?
        !current_user.nil?
      end
      
      def log_out
        session[:user_id] = nil
      end
      
      def log_in(user)
        session[:user_id] = user.id
      end


    end

    helpers SessionsHelper
  end
end