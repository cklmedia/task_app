class UsersController < ApplicationController

	def new
	  @user=User.new
	end

	def create
	  @user=User.new(name:params[:name],pwd:params[:pwd])
	  if @user.save
	  	flash[:success] = "添加新用户成功"
        redirect_to :action => :index, :id => @user
	  else
	  	flash[:success] = "添加新用户失败"
        redirect_to :back
	  end
	end

	def index
		@tasks=Task.where(user_id:params[:id])
	end

	def create_task
		@task=Task.new(content:params[:content],do_date:params[:do_date],user_id:params[:user_id])
		if @task.save
	  	  flash[:success] = "添加备忘成功"
          redirect_to :back
	    else
	  	  flash[:success] = "添加备忘失败"
          redirect_to :back
	    end
	end

	def destory_task
		@task=Task.find(params[:id])
		if @task.destroy
		  flash[:success] = "删除备忘成功"
          redirect_to :back
	    else
	  	  flash[:success] = "删除备忘失败"
          redirect_to :back
	    end
	end

end
