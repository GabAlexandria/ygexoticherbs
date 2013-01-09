class MailingListsController < ApplicationController

  def new
    @mailing_list = MailingList.new

  end

  #def edit
   # @mailing_list = MailingList.find(params[:id])
  #end

  def create
    @mailing_list = MailingList.new(params[:mailing_list])
    if @mailing_list.save
      if @mailing_list.receives_emails
        flash[:notice] = "Hooray! You have been added to our mailing list"
      else
      end
      redirect_to products_path
    else
      flash[:error] = "An error has occurred."
      render :action => :new
    end
  end

  #def update
    #@mailing_list = MailingList.find(params[:id])

  #end

  #def destroy
    #@mailing_list = MailingList.find(params[:id])
    #@mailing_list.destroy
  #end
end
