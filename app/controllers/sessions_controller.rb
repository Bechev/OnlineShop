class SessionsController < ApplicationController

    def new
        
    end

    def create 
        if auth_hash = request.env["omniauth.auth"]
            if user = User.find_by(email: request.env["omniauth.auth"].extra.raw_info[:email]) 
                session[:user_id] = user.id
            else
                user = User.create(email: request.env["omniauth.auth"].extra.raw_info[:email], password: SecureRandom.hex)
                session[:user_id] = user.id
            end
            redirect_to root_path
        else
            user = User.find_by(email: params[:email])
            if user && user.authenticate(params[:password])
                session[:user_id] = user.id
                redirect_to root_path
            else
                render "sessions/new"
            end
        end
    end

    def destroy
        reset_session
        redirect_to login_path
    end
     
    private
    
    def auth
    request.env['omniauth.auth']
    end

end
