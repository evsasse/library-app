class OrderingException < StandardError
  def initialize(msg= 'Ordering Service can not perform the process. Please check if data is being sent or if it is valid.')
    super
  end
end
