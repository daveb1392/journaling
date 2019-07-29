class JournalsController < ApplicationController

    before_action :find_journal, only: [:show, :edit, :update, :destroy]

    def index 
        @journals = Journal.paginate(page: params[:page], per_page: 5)
    end

    def new 
        @journal = Journal.new
    end

    def show
    end

    def edit
    end


    #create can be refactored

    def create
        @journal = Journal.new(journal_params)
        @journal.user = current_user
        if @journal.save
        flash[:notice] = "Your Journal was successfully created"
        redirect_to journal_path(@journal)
        else
            render 'new'
        end
    end

    def update
        if @journal.update(journal_params)
            flash[:notice] = "Journal was updated"
            redirect_to journal_path(@journal)
        else
            flash[:notice] = "Journal was not updated"
            render 'edit'
        end
    end

    def destroy
        @journal.destroy
        flash[:notice] = "Journal was deleted"
        redirect_to journals_path
    end



private

    def find_journal
        @journal = Journal.find(params[:id])
    end

    def journal_params
        params.require(:journal).permit(:title, :body)
    end

end