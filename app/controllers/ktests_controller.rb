class KtestsController < ApplicationController
  def index
    # @ktests = Ktest.all
  end

  def new
    @ktest = Ktest.new
  end

  def create
    @ktest = Ktest.new(ktest_params)
    if @ktest.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

private

def ktest_params
  params.require(:ktest).permit(:title, :content)
end

end
