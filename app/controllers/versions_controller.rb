class VersionsController < ApplicationController
    def update_bulk
        stage = params["stage"]
        versions = Version.where(id: params["versionIds"]).update_all(stage: stage)
        render json: versions
    end

    def delete_bulk
        versions = Version.where(id: params["versionIds"]).destroy_all()
        document_ids = versions.map{|version|
            version.document_id
        }
        Document.where(id: document_ids).delete_all()
        render status: :ok
    end
end
