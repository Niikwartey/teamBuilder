class ProjectMembersController < ApplicationController

  def create
    member = User.find(params[:id])
    project = Project.find(params[:project_id])
    ProjectMember.create(project_id: project.id, user_id: member.id)
    redirect_to user_project_path(current_user, project)
  end

  def update
    project = ProjectMember.find_by(user_id: current_user.id, project_id: params[:project_id])
    project.status = "accepted"
    project.save
    redirect_to user_path(current_user)
  end

end
