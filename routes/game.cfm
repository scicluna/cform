<cfscript>
    // Create an instance of your controller
    gameController = new apiorm.controllers.GameController();
    jsonLib = new apiorm.utils.JsonLib();
    
    requestBody = jsonLib.getRequestJson();

    // Determine the action based on the HTTP method
    switch (CGI.REQUEST_METHOD) {
        case "GET":
            if (structKeyExists(url, "id")) {
                content = gameController.getGameById(url.id);
            } else {
                content = gameController.getGames();
            }
            break;
        case "POST":
            if(isDefined("requestBody")){
                content = gameController.createGame(requestBody);
            }
            break;
        case "PUT":
            if(isDefined("requestBody")){
                content = gameController.updateGame(requestBody);
            }
            break;
        case "DELETE":
            if (structKeyExists(url, "id")) {
                content = gameController.deleteGameById(url.id);
            } else {
                content = "Invalid request";
            }
            break;
        default:
            content = "Unsupported method";
    }
</cfscript>
<cfcontent type="application/json">
<cfoutput>#serializeJSON(content)#</cfoutput>
