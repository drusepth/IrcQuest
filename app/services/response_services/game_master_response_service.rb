class GameMasterResponseService < ResponseService
  def self.responses
    [
      [
        /.*/,
        -> (m) do
          # Create Player objects for any new players we see
          player_name = m.user.nick

          if Player.where(name: player_name).empty?
            OutputService.info "Creating new Player #{player_name}."
            Player.create(name: player_name)
          end
        end
      ]
    ]
  end
end