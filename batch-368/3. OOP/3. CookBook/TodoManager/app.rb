require_relative 'task'
require_relative 'task_repository'
require_relative 'controller'
require_relative 'view'
require_relative 'router'

controller = Controller.new
router = Router.new(controller)

router.run
