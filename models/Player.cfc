component  persistent="true"  table="Player" {
    property name="id" fieldtype="id" generator="increment"  type="numeric" ;
    property name="firstName" type="string";
    property name="lastName" type="string";
    property name="email" type="string" unique="true";
    property name="games" fieldtype="many-to-many" 
        cfc="Game" fkcolumn="playerId" linktable="PlayerGameLink"  
        inversejoincolumn="gameId" type="array" lazy="true" cascade="all";
}