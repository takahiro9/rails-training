class HelloWorld < ApplicationJob
  queue_as :default
  def perform
    puts 'hello !!'
    Rails.logger.error("testtest")
  end
end
