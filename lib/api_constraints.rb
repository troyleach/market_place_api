class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(required)
    @default || required.headers['Accept'].include?("application/vnd.marketplace.v#{@version}")
  end
end
