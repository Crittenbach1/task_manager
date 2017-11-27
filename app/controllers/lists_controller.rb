class ListsController < ActionController::Base
  def index
  #  binding.pry
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
  #  binding.pry
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
  end

  private

      def list_params
        params.require(:list).permit(:title)
      end

end
