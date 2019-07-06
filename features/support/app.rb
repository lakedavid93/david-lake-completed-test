class Application

  def initialize(driver)
    @driver = driver
    @methods = {}
  end

  def method_missing(method_name, *args, &block)
    class_name = Object.const_get(method_name.to_s.split('_').map(&:capitalize).join() + 'Page')
    @methods[method_name] || @methods[method_name] = class_name.new(@driver)
  end

end
