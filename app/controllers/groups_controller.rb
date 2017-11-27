class GroupsController < ActionController::Base
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    
  end

end
