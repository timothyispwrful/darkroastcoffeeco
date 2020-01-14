class OrderingController < ApplicationController


  def index
    @orders = Order.sent
  end

  def show

  end

  def new
    @order = Order.new
  end

  def create
  @order = Order.new(order_params)
  @order.sentToStore = true
  if @order.save
    redirect_to(ordering_index_path)
  else
  puts "We didn't save."
  end
end
  

private
def order_params
  params.require(:order).permit(:item_name, :size, :extraEspressoShots, :milkType, :flavor, :decaf, :sentToStore)
end

end
