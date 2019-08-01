class JournalsController < ApplicationController

    before_action :find_journal, only: [:show, :edit, :update, :destroy]
    before_action :user_owns_journal?, only: [:show, :edit, :update, :destroy]

    def index 
        @journals = Journal.paginate(page: params[:page], per_page: 10)
    end

    def new 
        @journal = Journal.new
    end

    def show
        if logged_in?
        end
    end

    def edit
        if logged_in?
        end
    end

    # def positive_days
    #     Journal.select { |entry| entry.how_was_day == "Positive" }
    # end

    # def negative_days
    #     Journal.select { |entry| entry.how_was_day == "Negative" }
    # end

    # def neutral_days
    #     Journal.select { |entry| entry.how_was_day == "Neutral" }
    # end

    # def happy_day
    #     if @journal.how_was_day == "Positive"



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

    def user_owns_journal?
        unless @journal.user == current_user
            flash[:notice] = "To see YOUR journals, please login to your account"
        end
    end

    def journal_params
        params.require(:journal).permit(:title, :grateful, :today_great, :affirmation, :good_deed, :improve, :experienced, :meditate, :how_was_day, :meditation_id)
    end

end