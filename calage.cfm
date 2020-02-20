<cffunction name="calAge" returntype="string">
	<cfargument name="bDate" type="date" default="#now()#">
    <cfset yDate = dateformat(bDate, 'YYYY')>
    <cfset mDate = dateformat(bDate, 'MM')>
    <cfset dDate = dateformat(bDate, 'DD')>
    <cfset bDate = createdate(yDate, mDate, dDate)>
    <cfset bDate =dateDiff("yyyy", bDate, now())>
    <cfreturn bDate>
</cffunction>
