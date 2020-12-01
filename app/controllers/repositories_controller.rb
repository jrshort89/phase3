class RepositoriesController < ApplicationController

    @@options = {
        include: [:documents]
      }

    def index
        repos = Repository.all
        render json: RepositorySerializer.new(repos, @@options)
    end

    def show
        repo = Repository.find(params[:id])
        render json: repo
    end

    def getDocuments
        repo = Repository.find(params[:id]).documents
        # render json: DocumentSerializer.new(repo, {
        #     include: [:versions]
        # })
        render json: repo.to_json(include: [:versions])
    end

    def create
        puts 'Post Success!'
    end
end
