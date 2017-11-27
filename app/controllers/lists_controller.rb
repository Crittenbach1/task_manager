class ListsController < ActionController::Base
  def index
  #  binding.pry
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(title: params[:list][:title])
    @task = @list.tasks.new(title: params[:task][:title], content: params[:task][:content])
   binding.pry
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
