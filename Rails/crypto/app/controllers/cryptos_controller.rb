class CryptosController < ApplicationController
  before_action :set_crypto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :destroy, :show]
  
  
  def index
    @cryptos = Crypto.all
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_crypto = JSON.parse(@response)
    @profit_loss = 0
    
  end

  
  def show
    @cryptos = Crypto.all
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @show_crypto = JSON.parse(@response)
  end

  def new
    @crypto = Crypto.new
  end

  def edit
  end

  
  def create
    @crypto = Crypto.new(crypto_params)

    respond_to do |format|
      if @crypto.save
        format.html { redirect_to @crypto, notice: 'Crypto was successfully created.' }
        format.json { render :show, status: :created, location: @crypto }
      else
        format.html { render :new }
        format.json { render json: @crypto.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @crypto.update(crypto_params)
        format.html { redirect_to @crypto, notice: 'Crypto was successfully updated.' }
        format.json { render :show, status: :ok, location: @crypto }
      else
        format.html { render :edit }
        format.json { render json: @crypto.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @crypto.destroy
    respond_to do |format|
      format.html { redirect_to cryptos_url, notice: 'Crypto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_crypto
      @crypto = Crypto.find(params[:id])
    end

    def crypto_params
      params.require(:crypto).permit(:symbol, :user_id, :cost_per, :amount_owned)
    end

    def correct_user
      @correct = current_user.cryptos.find_by(id: params[:id])
      redirect_to cryptos_path, notice: "Hey! Not Authorized to edit this entry" if @correct.nil?
    end
    
end
