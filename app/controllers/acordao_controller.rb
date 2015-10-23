class AcordaoController < ApplicationController

  def index
#    @acordaos = Acordao.all
 #   paramsForm = params[:acordao]
 #   puts( "params recebidos form: #{paramsForm}")
#    @acordao = Acordao.find_by_acordaoId( paramsForm[:acordaoId])
  #  respond_to do |format|
   #    format.html # show.html.erb
    #   format.json { render json: @acordao }
     #  format.js { head :ok }
#    end
  end

  def show 
#    @acordao = Acordao.find( params[:id])
    #puts "show action #{params[:input_for_id]}"
    paramsForm = params[:acordao]
    puts( "params recebidos form: #{paramsForm}")
    @acordao = Acordao.find_by_acordaoId( paramsForm[:acordaoId])
    respond_to do |format|
 #       puts "ola response adsa"
      #  format.html # show.html.erb
        format.json{
            render json: {:acordao => @acordao}
        }
  #      format.xml { render :xml => @acordao, :status => :found, :location => @acordao }
     #   format.json { render acordao: @acordao }
#        puts format.json
    end 
  end

  def search
  end

end
