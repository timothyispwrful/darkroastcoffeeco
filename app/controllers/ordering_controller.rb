class OrderingController < ApplicationController


  def index
    @sentOrder = Order.sent
    @acceptedOrder = Order.accepted
    @readyOrder = Order.ready
  end

  def show

  end

  def new
    @order = Order.new
  end

  def accept
    @order = Order.find(params[:id])
    @order.orderAccepted = true
    @order.sentToStore = false
    if @order.save
      # redirect_to(ordering_index_path)
      redirect_to(root_path)
      else
      puts "We didn't save."
      end
  end

  def complete
    @order = Order.find(params[:id])
    @order.orderAccepted = false
    @order.sentToStore = false
    @order.orderReady = true
    if @order.save
      # redirect_to(ordering_index_path)
      redirect_to(root_path)
      else
      puts "We didn't save."
      end
  end

  def create
  @order = Order.new(order_params)
  @order.sentToStore = true
    if @order.save
    # redirect_to(ordering_index_path)
    redirect_to(root_path)
    else
    puts "We didn't save."
    end
  end

def delete
  @order = Order.find(params[:id])
  @order.destroy
  redirect_to(root_path)
end



end
  

private
def order_params
  params.require(:order).permit(:id, :item_name, :size, :extraEspressoShots, :milkType, :flavor, :decaf, :sentToStore, :orderAccepted)
end

private
def id_param
  params.require(:id)
end

