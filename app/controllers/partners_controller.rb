class PartnersController < ApplicationController

	def list
        @partners = Partner.all
    end


	def new
		@partners=Partner.new
    end

    
    def add
        @partners=Partner.new(partner_params)
        if @partners.save
            redirect_to(action:'list')
        else
            flash[:notice]= "Error:Record is not created"
            render(action:'new')
        end
    end


    def delete
    	@partner=Partner.find(params[:id])
    end

    def destroy
    	partner=Partner.find(params[:id])
    	partner.destroy
    	redirect_to(action: 'list')
    end


    def edit
        @partner = Partner.find(params[:id])
    end

    def update
        @partner = Partner.find(params[:id])
        if @partner.update(partner_params)
            redirect_to(action: 'list')
        else
            render :edit
        end
    end


    def show
        @partner = Partner.find(params[:id])
    end



	
    def partner_params
      params.require(:partners).permit(:name, :services, :duration, :email)
    end
end
