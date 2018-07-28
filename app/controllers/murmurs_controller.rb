class MurmursController < ApplicationController
  before_action :set_murmur, only:[:edit,:update,:destroy]
  
  def index
    @murmurs = Murmur.all
  end
  
  def edit
  end
  
  def show
    redirect_to new_murmur_path
  end

  def new
    @submit = "投稿"
    if params[:back]
     @murmur = Murmur.new(murmur_params)
    else
     @murmur = Murmur.new
    end
  end

  def create
    @murmur = Murmur.create(murmur_params)
    if @murmur.save
      redirect_to murmurs_path,notice: "つぶやきました！"
    else
      render 'new'
    end
  end

  def update
    if @murmur.update(murmur_params)
      redirect_to murmurs_path,notice:"つぶやきを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @murmur.destroy
    redirect_to murmurs_path,notice:"つぶやきを削除しました！"
  end
  
  def confirm
    @submit = "確認"
    @back = "戻る"
    @murmur = Murmur.new(murmur_params)
    render :new if @murmur.invalid?
  end
  
  private
  def murmur_params
    params.require(:murmur).permit(:content)
  end
  
  def set_murmur
    @murmur = Murmur.find(params[:id])
  end
end
