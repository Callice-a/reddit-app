class SubsController < ApplicationController
    before_action :set_sub, only: [:show, :update, :edit, :destroy]

    def index
        @subs = Sub.all
        render component: "Subs", props: {subs: @subs}
    end

    def show
        # @sub = Sub.find(params[:id])
        render component: "Sub", props: {sub: @sub}
    end
    def edit
        # @sub = Sub.find(params[:id])
        render component: "SubEdit"
    end
    def new
        render component: "SubNew"
    end
    def create
        @sub = Sub.new(sub_params)
        if(@sub.save)
            redirect_to root_path
        else
        end
    end
    def update
        @sub = Sub.find(params[:id])
    end
    def destroy
        # @sub = Sub.find(params[:id])
        @sub.destroy
        redirect_to root_path
    end

    private
    def set_sub
        @sub = Sub.find(params[:id])
    end
    def sub_params
        params.require(:sub).permit(:name)
    end

end