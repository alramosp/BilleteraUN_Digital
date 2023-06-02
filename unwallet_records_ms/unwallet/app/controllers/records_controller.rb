class RecordsController < ApplicationController
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token
    def index
      @records = Record.all
      respond_to do |format|
        format.html # Renderiza la vista index.html.erb
        format.json { render json: @records }
      end
    end
    
    def show
      @record = Record.find(params[:id])
    end
    
    def new
      @record = Record.new
    end
    
    def create
      @record = Record.new(record_params)
      
      if @record.save
        redirect_to records_path
      else
        render 'new'
      end
    end
    
    def edit
      @record = Record.find(params[:id])
    end
    
    def update
      @record = Record.find(params[:id])
      
      if @record.update(record_params)
        redirect_to records_path
      else
        render 'edit'
      end
    end
    
    def destroy
      @record = Record.find(params[:id])
      @record.destroy
      
      redirect_to records_path
    end
    
    private
    
    def record_params
      params.require(:record).permit(:record_id,:user_id, :account_id, :category_id, :name, :record_type_id, :amount, :date)
    end
end
  