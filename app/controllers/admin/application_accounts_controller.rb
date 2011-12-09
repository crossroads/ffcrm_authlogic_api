class Admin::ApplicationAccountsController < Admin::ApplicationController
  before_filter :require_user
  before_filter "set_current_tab('admin/application_accounts')", :only => [ :index ]

  # GET /admin/application_accounts
  #----------------------------------------------------------------------------
  def index
    @application_accounts = ApplicationAccount.order(:created_at)
    respond_to do |format|
      format.html # index.html.haml
    end
  end

  # POST /admin/application_accounts
  #----------------------------------------------------------------------------
  def create
    @application_account = ApplicationAccount.new(params["application_account"])
    respond_to do |format|
      if @application_account.save
        flash[:notice] = 'New application account created'
      else
        flash[:notice] = 'There was error creating the application account.'
      end
      format.html { redirect_to :action => :index } # go back to index.haml
    end
  end

  # PUT /admin/application_accounts/1
  #----------------------------------------------------------------------------
  def update
    @application_account = ApplicationAccount.find(params["id"])
    @application_account.attributes = params["application_account"]
    respond_to do |format|
      if @application_account.save
        flash[:notice] = 'New application account created'
      else
        flash[:notice] = 'Please fill out the name and token'
      end
      format.html { redirect_to :action => :index } # go back to index.haml
    end
  end

  # DELETE /admin/application_accounts/1
  #----------------------------------------------------------------------------
  def destroy
    @application_account = ApplicationAccount.find(params["id"])
    respond_to do |format|
      if @application_account.destroy
        flash[:notice] = 'Application account deleted'
      else
        flash[:notice] = 'There was error deleting the application account.'
      end
      format.html { redirect_to :action => :index } # go back to index.haml
    end
  end
end
