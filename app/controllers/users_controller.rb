class UsersController < ApplicationController
    def label_params
      params.require(:user).permit(:nombre, :apellidoPaterno, :apellidoMaterno, :fechaNacimiento)
    end
end
