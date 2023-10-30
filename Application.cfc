<cfcomponent>
    <cfset THIS.Name = "ORMAPI">
    <cfset THIS.ApplicationTimeout = CreateTimeSpan(0,1,0,0)>
    <cfset THIS.SessionManagement = true>
    <cfset THIS.SessionTimeout = CreateTimeSpan(0,0,30,0)>
    <cfset THIS.ormEnabled = true>
    <cfset THIS.datasource = "ormapi">
    <cfset THIS.ormSettings = {
        dbcreate = "update",
        cfclocation = "model"
    }>
</cfcomponent>

