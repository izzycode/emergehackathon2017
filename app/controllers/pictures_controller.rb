class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  # GET /receipts
  # GET /receipts.json


  # GET /receipts/1
  # GET /receipts/1.json
  def show
  end

  # GET /receipts/new
  def new
    @picture = Picture.new
  end

  # GET /receipts/1/edit
  def edit

  end
  def index
  end

  # POST /receipts
  # POST /receipts.json
  def create

    @picture = Picture.new(picture_params)
    @picture.user = current_user


    respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture.user, notice: 'Thanks for uploading!' }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { render :new }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /receipts/1
  # PATCH/PUT /receipts/1.json
  def update


    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to @picture.expense_category, notice: 'Picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receipts/1
  # DELETE /receipts/1.json
  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to @picture.expense_category, notice: 'Picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_picture
    @picture = Picture.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def picture_params
    params.require(:picture).permit(:picture, :user_id)

  end
end
