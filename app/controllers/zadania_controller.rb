class ZadaniaController < ApplicationController

	def index
		@zadania = Zadanium.all
	end

	def show
		@zadanium = Zadanium.find(params[:id])
	end

	def new
		@zadania = Zadanium.new
	end

	def create
		@zadania = Zadanium.new(zadanium_params)
		if @zadania.save
			redirect_to '/zadania'
		else
			render 'new'
		end
	end

	def edit
		@zadanium = Zadanium.find(params[:id])
	end

	def update
		@zadanium = Zadanium.find(params[:id])
		if @zadanium.update(zadanium_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	def destroy
		@zadanium = Zadanium.find(params[:id])
		@zadanium.destroy

		redirect_to root_path
	end

	private
	def zadanium_params
		params.require(:zadanium).permit(:nazwa, :termin, :przydzial, :opis)
	end
end
