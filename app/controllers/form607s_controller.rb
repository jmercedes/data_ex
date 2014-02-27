class Form607sController < ApplicationController
  before_action :set_form607, only: [:show, :edit, :update, :destroy]

  # GET /form607s
  # GET /form607s.json
  def index
    @form607s = Form607.all
    respond_to do |format|
      format.html
      format.xls { send_data @form607s.to_xls(col_sep: "\t") }
    end
  end

  # GET /form607s/1
  # GET /form607s/1.json
  def show
  end

  # GET /form607s/new
  def new
    @form607 = Form607.new
  end

  # GET /form607s/1/edit
  def edit
  end

  # POST /form607s
  # POST /form607s.json
  def create
    @form607 = Form607.new(form607_params)

    respond_to do |format|
      if @form607.save
        format.html { redirect_to @form607, notice: 'Form607 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @form607 }
      else
        format.html { render action: 'new' }
        format.json { render json: @form607.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form607s/1
  # PATCH/PUT /form607s/1.json
  def update
    respond_to do |format|
      if @form607.update(form607_params)
        format.html { redirect_to @form607, notice: 'Form607 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @form607.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form607s/1
  # DELETE /form607s/1.json
  def destroy
    @form607.destroy
    respond_to do |format|
      format.html { redirect_to form607s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form607
      @form607 = Form607.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form607_params
      params.require(:form607).permit(:company)
    end
end
