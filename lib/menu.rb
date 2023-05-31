OPTIONS = {
  1 => {label: 'List all authors', action: :list_all_authors},
  2 => {label: 'Add author', action: :add_author},
  3 => {label: 'Exit', action: :exit_program}
}.freeze


class Menu
  def initialize(app)
    @app = app
  end