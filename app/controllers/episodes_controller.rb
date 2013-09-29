Episode = Struct.new :status, :title

class EpisodesController < ApplicationController
  def index
    @episodes = Object.new
    def @episodes.published(&block)
      [
        Episode.new("published", "Episode 1"),
        Episode.new("published", "Episode 2")
      ].each(&block)
    end
  end
  
end
