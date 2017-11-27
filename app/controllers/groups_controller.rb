class GroupsController < ActionController::Base
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
  #  binding.pry
    if @group.save
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  private

      def group_params
        params.require(:group).permit(:title)
      end

end
