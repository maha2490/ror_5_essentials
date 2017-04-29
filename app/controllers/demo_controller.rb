class DemoController < ApplicationController

  layout false

  def index
    render('index')
  end

  def hello
    @array = [3, 4, 5]
    @id = params['id']
    @page = params[:page]
    render('hello')
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  end

end
