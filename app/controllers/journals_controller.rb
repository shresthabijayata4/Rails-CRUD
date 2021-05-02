class JournalsController < ApplicationController
    def index
        @journals =Journal.all
    end

    def show
        @journal = Journal.find(params[:id])
    end

    def new
        @journal = Journal.new
    end

    def create
        journal = Journal.new(journal_params)
        if journal.valid?
            journal.save
        else
            puts "Error"
        end
        redirect_to journals_path
    end

    def edit
        @journal = Journal.find(params[:id])

    end

    def update
        journal = Journal.find(params[:id])
        journal.update(journal_params)
        redirect_to journals_path

    end

    def destroy
        journal = Journal.find(params[:id])
        journal.destroy(journal)
        redirect_to journal_path
    end

    private
    def journal_params
        params.require(:journal).permit(:title, :amount, :cashin_out, :user_id,)
    end
     
end
