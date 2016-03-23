class PagesController < ApplicationController
  
  def batman
  
  end

  def superman

  end

  def batman_vs_superman

  end

  def save_data
    if params[:email].present? 
    Vote.new(
              hero: params[:hero],
              email: params[:email]
      ).save

      redirect_to root_path, notice:"Voto registrado"
    else
      flash[:alert] = "Ingrese su E-Mail"
      render :batman_vs_superman
    end
  end
end
