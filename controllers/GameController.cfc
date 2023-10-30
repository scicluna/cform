component {

    public function getGames(){
        var game = EntityLoad("Game")
        return game
    }

    public function getGameById(id){
        try{
        var game = EntityLoadByPK("Game", id)
        return game
        } catch(Any e){
            return e.message
        }
    }
    
    public function createGame(requestBody){
        try{
            var game = EntityNew("Game")
            game.setName(requestBody.name)
            entitySave(game)
            return "Game created successfully"
        } catch(Any e){
            return e.message
        }
    }

    public function updateGame(requestBody){
        try {
            var game = EntityLoadByPK("Game", requestBody.id)
            game.setName(requestBody.name)
            entitySave(game)
            return "Game updated successfully"
        } catch(Any e){
            return e.message
        }
    }

    public function deleteGameById(id){
        try{
            var game = EntityLoadByPK("Game", id)
            entityDelete(game)
            return "Game deleted successfully"
        } catch(Any e){
            return e.message
        }
    }
}