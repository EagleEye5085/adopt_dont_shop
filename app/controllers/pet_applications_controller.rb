class PetApplicationsController < ApplicationsController
   def create
      # binding.pry
      # @pet = Pet.create!(params[:pet_id])
      # @application = Application.create!(params[:application_id])
      @pet_application = PetApplication.create(pet_application_params)
      redirect_to "/applications/#{@pet_application.application_id}"
      # @pet_application.save
   end

   def update
     pet = Pet.find(params[:pet_id])
     application = Application.find(params[:application_id])
     # binding.pry
     if params[:commit]  == "Approve Pet"
       pet.update(adoptable: false)
       PetApplication.update(status: 'approved')
       redirect_to "/admin/applications/#{application.id}"
     elsif
       params[:commit]  == "Reject Pet"
       PetApplication.update(status: 'rejected')
       redirect_to "/admin/applications/#{application.id}"
     end


   end

   private
   def pet_application_params
      params.permit(:status, :pet_id, :application_id)
   end
end
