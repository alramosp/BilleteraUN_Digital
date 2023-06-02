class RecordTypesController < ApplicationController
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token
    def index
      @record_types = RecordType.all
      respond_to do |format|
        format.html # Renderiza la vista index.html.erb
        format.json { render json: @record_types }
      end
    end
  
    def show
      @record_type = RecordType.find(params[:id])
    end
  
    def new
      @record_type = RecordType.new
    end
  
    def create
      @record_type = RecordType.new(record_type_params)
      if @record_type.save
        redirect_to record_types_path
      else
        render 'new'
      end
    end
  
    def edit
      @record_type = RecordType.find(params[:id])
    end
  
    def update
      @record_type = RecordType.find(params[:id])
      if @record_type.update(record_type_params)
        redirect_to record_types_path
      else
        render 'edit'
      end
    end
  
    def destroy
      @record_type = RecordType.find(params[:id])
      @record_type.destroy
      redirect_to record_types_path
    end
  
    private
  
    def record_type_params
      params.require(:record_type).permit(:name, :r_type)
    end
  end
  