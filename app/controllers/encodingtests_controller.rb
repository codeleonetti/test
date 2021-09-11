class EncodingtestsController < ApplicationController
  before_action :set_encodingtest, only: %i[ show edit update destroy ]

  # GET /encodingtests or /encodingtests.json
  def index
    @encodingtests = Encodingtest.all
    base64_image = 
    
    File.open("app/image_uploads/IMG_9215.jpg", "rb") do |file|
        # why strict_encode64
        # https://ruby-doc.org/stdlib-2.3.1/libdoc/base64/rdoc/Base64.html#method-i-strict_encode64
        Base64.strict_encode64(file.read)
        end
        Encodingtest.create(image:base64_image)
      

    image =

        File.open("app/image_uploads/IMG_9215.jpg", "rb") do |file|
            # why strict_encode64
            # https://ruby-doc.org/stdlib-2.3.1/libdoc/base64/rdoc/Base64.html#method-i-strict_encode64
            file.read
            end
          img64= Base64.strict_encode64(image)

    # img_from_base64 = 
  end

  # GET /encodingtests/1 or /encodingtests/1.json
  def show

  end

  # GET /encodingtests/new
  def new
    @encodingtest = Encodingtest.new
  end

  # GET /encodingtests/1/edit
  def edit
  end

  # POST /encodingtests or /encodingtests.json
  def create
    base64_image = Base64.strict_encode64("https://theoldhouselife.com/wp-content/uploads/2018/10/IS6yt72q8kdijw1000000000.jpg")
      
     

    @encodingtest = Encodingtest.new(image:base64_image)

    respond_to do |format|
      if @encodingtest.save
        format.html { redirect_to @encodingtest, notice: "Encodingtest was successfully created." }
        format.json { render :show, status: :created, location: @encodingtest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @encodingtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encodingtests/1 or /encodingtests/1.json
  def update
    respond_to do |format|
      if @encodingtest.update(encodingtest_params)
        format.html { redirect_to @encodingtest, notice: "Encodingtest was successfully updated." }
        format.json { render :show, status: :ok, location: @encodingtest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @encodingtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encodingtests/1 or /encodingtests/1.json
  def destroy
    @encodingtest.destroy
    respond_to do |format|
      format.html { redirect_to encodingtests_url, notice: "Encodingtest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encodingtest
      @encodingtest = Encodingtest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def encodingtest_params
      params.fetch(:encodingtest,:image)
    end
end
