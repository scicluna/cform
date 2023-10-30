component  persistent="true"  table="Game" {
    property name="id" fieldtype="id" generator="increment"  type="numeric" ;
    property name="name" type="string";
    property name="players" fieldtype="many-to-many" cfc="Player" fkcolumn="gameId"
        linktable="PlayerGameLink" inversejoincolumn="playerId" lazy="true" type="array"
        cascade="all" ;
}