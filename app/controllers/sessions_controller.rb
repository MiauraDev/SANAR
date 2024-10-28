class SessionsController < ApplicationController
  def new
  end

  def create
    puts params.inspect # Esto imprimirá los parámetros en la consola
    # Asegúrate de que `params[:session]` esté definido
    admin = Admin.find_by(username: params["[session]"]["username"])


    if admin&.authenticate(params["[session]"]["password"])
      session[:admin_id] = admin.id
      redirect_to root_path, notice: ""
    else
      flash.now[:alert] = "Credenciales incorrectas"
      render :new
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to root_path, notice: ""
  end
end
