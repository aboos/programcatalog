class ProgramController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [programInstanceList: Program.list(params), programInstanceTotal: Program.count()]
    }

    def create = {
        def programInstance = new Program()
        programInstance.properties = params
        return [programInstance: programInstance]
    }

    def save = {
        def programInstance = new Program(params)
        if (programInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'program.label', default: 'Program'), programInstance.title])}"
            redirect(action: "show", id: programInstance.id)
        }
        else {
            render(view: "create", model: [programInstance: programInstance])
        }
    }

    def show = {
        def programInstance = Program.get(params.id)
        if (!programInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'program.label', default: 'Program'), params.id])}"
            redirect(action: "list")
        }
        else {
            [programInstance: programInstance]
        }
    }

    def edit = {
        def programInstance = Program.get(params.id)
        if (!programInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'program.label', default: 'Program'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [programInstance: programInstance]
        }
    }

    def update = {
        def programInstance = Program.get(params.id)
        if (programInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (programInstance.version > version) {
                    
                    programInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'program.label', default: 'Program')] as Object[], "Another user has updated this Program while you were editing")
                    render(view: "edit", model: [programInstance: programInstance])
                    return
                }
            }
            programInstance.properties = params
            if (!programInstance.hasErrors() && programInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'program.label', default: 'Program'), programInstance.title])}"
                redirect(action: "show", id: programInstance.id)
            }
            else {
                render(view: "edit", model: [programInstance: programInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'program.label', default: 'Program'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def programInstance = Program.get(params.id)
        if (programInstance) {
            try {
                programInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'program.label', default: 'Program'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'program.label', default: 'Program'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'program.label', default: 'Program'), params.id])}"
            redirect(action: "list")
        }
    }
}
