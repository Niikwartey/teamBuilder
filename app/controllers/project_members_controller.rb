class ProjectMembersController < ApplicationController

  def create
    member = User.find(params[:id])
    project = Project.find(params[:project_id])
    ProjectMember.create(project_id: project.id, user_id: member.id)
    redirect_to user_project_path(current_user, project)
  end

end
