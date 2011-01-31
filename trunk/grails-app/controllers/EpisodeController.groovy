class EpisodeController {
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [episodeInstanceList: Episode.list(params), episodeInstanceTotal: Episode.count()]
    }

    def create = {
        def episodeInstance = new Episode()
        episodeInstance.properties = params
        return [episodeInstance: episodeInstance]
    }

    def save = {
        def episodeInstance = new Episode(params)
        if (episodeInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'episode.label', default: 'Episode'), episodeInstance.id])}"
			redirect(action: "show", id: episodeInstance.id)
        }
        else {
            render(view: "create", model: [episodeInstance: episodeInstance])
        }
    }

    def show = {
        def episodeInstance = Episode.get(params.id)
        if (!episodeInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'episode.label', default: 'Episode'), params.id])}"
            redirect(action: "list")
        }
        else {
            [episodeInstance: episodeInstance]
        }
    }

    def edit = {
        def episodeInstance = Episode.get(params.id)
        if (!episodeInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'episode.label', default: 'Episode'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [episodeInstance: episodeInstance]
        }
    }

    def update = {
        def episodeInstance = Episode.get(params.id)
        if (episodeInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (episodeInstance.version > version) {
                    
                    episodeInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'episode.label', default: 'Episode')] as Object[], "Another user has updated this Episode while you were editing")
                    render(view: "edit", model: [episodeInstance: episodeInstance])
                    return
                }
            }
            episodeInstance.properties = params
            if (!episodeInstance.hasErrors() && episodeInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'episode.label', default: 'Episode'), episodeInstance.id])}"
                redirect(action: "show", id: episodeInstance.id)
            }
            else {
                render(view: "edit", model: [episodeInstance: episodeInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'episode.label', default: 'Episode'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def episodeInstance = Episode.get(params.id)
        if (episodeInstance) {
            try {
                episodeInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'episode.label', default: 'Episode'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'episode.label', default: 'Episode'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'episode.label', default: 'Episode'), params.id])}"
            redirect(action: "list")
        }
    }
	

}
