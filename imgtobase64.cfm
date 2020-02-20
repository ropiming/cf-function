<cffunction name="imgtobase" returntype="string">
    <cfargument name="url" required="yes" />
    <cfhttp url="#url#" result="Response" />
    <cfset html = ToBase64(Response.FileContent) />
    <cfreturn html>
</cffunction>
