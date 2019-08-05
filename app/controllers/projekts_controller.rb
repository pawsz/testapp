class ProjektsController < ApplicationController

  def index
    @projekts = Projekt.all
  end
  def new
    @projekts = Projekt.new
  end
  def create
    @projekts = Projekt.new(projekt_params)
    if @projekts.save
      redirect_to '/projekts'
    else
      render 'new'
    end
  end

  def edit
    @projekt = Projekt.find(params[:id])
  end
  
  def update
		@projekt = Projekt.find(params[:id])
		if @projekt.update(projekt_params)
			redirect_to '/projekts'
		else
			render 'edit'
		end
	end

	def destroy
		@projekt = Projekt.find(params[:id])
		@projekt.destroy

		redirect_to '/projekts'
	end

  def projekt_params
    params.require(:projekt).permit(:nazwa, :opis, :zadania_id)
  end
end
