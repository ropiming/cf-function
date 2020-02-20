<cffunction name="calPostTime" returntype="string">
	<cfargument name="sDate" type="date" default="#now()#">
    <cfset sTime = now().getTime() - sDate.getTime()>
	<cfset aTime = "เมื่อสักครุ่">
	<cfif (sTime / (2592000000 * 12)) gte 1>
   		<cfset aTime = Round(sTime / (2592000000 * 12)) & " ปีที่ผ่านมา">
    <cfelseif (sTime / 2592000000) gte 1>
   		<cfset aTime = Round(sTime / 2592000000) & " เดือนที่ผ่านมา">
    <cfelseif (sTime / 604800000) gte 1>
   		<cfset aTime = Round(sTime / 604800000) & " สัปดาห์ที่ผ่านมา">
    <cfelseif (sTime / 86400000) gte 1>
   		<cfset aTime = Round(sTime / 86400000) & " วันที่ผ่านมา">
    <cfelseif (sTime / 3600000) gte 1>
   		<cfset aTime = Round(sTime / 3600000) & " ชั่วโมงที่ผ่านมา">
    <cfelseif (sTime / 60000) gte 1>
   		<cfset aTime = Round(sTime / 60000) & " นาทีที่ผ่านมา">
    <cfelseif (sTime / 1000) gte 1>
   		<cfset aTime = Round(sTime / 1000) & " วินาทีที่ผ่านมา">
    </cfif>
    
    <cfset sResult = aTime>
	<cfreturn sResult>
</cffunction>
