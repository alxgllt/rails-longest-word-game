class LongestwordController < ApplicationController

  def game
    @array = Array.new(10) { ('A'..'Z').to_a[rand(26)] }
    @start_time = Time.new
  end

  def score
    @start_time = Time.parse(params[:start_time])
    @end_time = Time.new
    @proposal = params[:proposal]
    @score = @proposal.size * 1000 / (@end_time - @start_time)
  end

end

