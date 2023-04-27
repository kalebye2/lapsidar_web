class AuthorizationController < ApplicationController
  before_action :authenticate_membro!, only: %i[ show edit update destroy new]
end
