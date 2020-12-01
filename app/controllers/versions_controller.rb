class VersionsController < ApplicationController
    def update_bulk
        versionIds = params["versionIds"]
        stage = params["stage"]
        versions = Version.where(id: params["versionIds"]).update_all(stage: stage)
        render json: versions
    end
end
