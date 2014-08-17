class SupportsControler < ApplicationController
  def create
    @support = Support.create(support_params)

    EmailMailer.support_mailer(@support).deliver

    respond_with @support
  end

  def support_params
    params.require(:support)
          .permit(:name, :program, :why, :experience, :gain, :strengths,
                  :understanding, :challenges, :training, :responsibilities,
                  :honorarium)
  end
end
