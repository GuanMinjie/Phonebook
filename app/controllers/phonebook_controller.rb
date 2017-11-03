class PhonebookController < ApplicationController
  #layout 'standard'
  def index
        @phonebooks = Phonebook.all
    end

    def show
       @phonebook = Phonebook.find(params[:id])
    end
    def new
       @phonebook = Phonebook.new
    end
    def create
      @phonebook = Phonebook.new(phonebook_params)
      @phonebook.user_id = session[:user_id]

      if @phonebook.save
          redirect_to  :action => 'index'
      else
          render :action => 'new'
      end
    end
    
     def edit
        @phonebook  = Phonebook.find(params[:id])
     end
     def update
      @phonebook = Phonebook.find(params[:id])
       if @phonebook.update_attributes(phonebook_params)
           redirect_to :action => 'show',:id => @phonebook
       else
           render :action => 'edit'
       end
     end
     def destory
        Phonebook.find(params[:id]).destroy
       redirect_to :action => 'index'
      end
  private
     def phonebook_params
         params.require(:phonebooks).permit(:linkman,:number  )
           #params.require(:phonebooks).permit(:linkman, :number)
    end
end
