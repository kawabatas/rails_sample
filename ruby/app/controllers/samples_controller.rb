require Rails.root.join('app/services/sample_service')

class SamplesController < ApplicationController
  def index
    @samples = Sample.all
    @aaa = SampleService.aaa
  end

  def show
    @sample = Sample.find_by(id: params[:id])
  end
end
