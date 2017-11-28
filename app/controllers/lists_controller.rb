class ListsController < ActionController::Base
  def index
    @group = Group.find(params[:group_id])
  end

  def new
  #   binding.pry
    @group = Group.find(params[:group_id])
    @list = @group.lists.build
    @list.tasks.build
  end

  def create
  binding.pry
    @group = Group.find(params[:list][:group_id])
    @list = List.new(list_params)

    if @list.save
       @task = @list.tasks.build(user_id: params[:list][:tasks_attributes]["0"][:user_id], title: params[:list][:tasks_attributes]["0"][:title], content: params[:list][:tasks_attributes]["0"][:content])
       @task.save

      redirect_to group_list_path(@group, @list)
    end
  end

  def show
        binding.pry
        @list = List.find(params[:id])
        @group = @list.group

  end

  private

      def list_params
        params.require(:list).permit(:title, :content, :group_id, :tasks_attributes)
      end

end
