class ListsController < ActionController::Base
  def index
  #  binding.pry
  end

  def new
    @list = List.new
  end

  def create
    #binding.pry
    @list = List.new(list_params)
    @task = @list.tasks.new(title: params[:list][:title], content: params[:list][:task][:content])

    if @list.save && @task.save
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
        params.require(:list).permit(:title, :content, :task_attributes)
      end

end
