class SessionsController < ApplicationController
    def new
    end

    def show
    end

    def create
        if !params[:name] || params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
           redirect_to '/'
        end
    end

    def destroy
        if session[:name]
            session.delete :name
        end
    end

end