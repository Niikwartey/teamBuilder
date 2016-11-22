class ProjectMembersController < ApplicationController

  def create
    member = User.find(current_user.id)
    project = Project.find(params[:project_id])
    ProjectMember.create(project_id: project.id, user_id: member.id)
    redirect_to user_project_path(current_user, project)
  end

  def update
    binding.pry
    ProjectMember.find_by(user_id: current_user.id, project_id: params[:project_id])
  end

end
