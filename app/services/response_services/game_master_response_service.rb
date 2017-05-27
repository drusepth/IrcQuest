class GameMasterResponseService < ResponseService
  def self.responses
    [
      [
        /.*/,
        -> (m) do
          new_player_name = m.user.nick

          if Player.where(name: new_player_name).empty?
            OutputService.info "Creating new Player #{new_player_name}."
            Player.create name: new_player_name
          end

          nil
        end
      ]
    ]
  end
end