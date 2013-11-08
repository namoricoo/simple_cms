class DemoController < ApplicationController
  def index
    render(:template =>'demo/index') # both options are vailid. Use this if file is not in the fefault folder.
  end
  def hello
    @array = [1,2,3,4,5]
    
    render('demo/hello')  # Most common way to do it.
  end
  def redirect_example
    redirect_to(:action => 'text_demo')
  end
   def redirect_external_link
    redirect_to("http://www.lynda.com")
  end
  def text_demo
    render(:text => 'Hello with basic text data')
  end
end
