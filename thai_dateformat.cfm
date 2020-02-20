<cffunction name="thai_dateformat" hint="Format dd-mm-yyyy to Thai">
	<cfargument name="sDate" type="string" default="">
	<cfif sDate is "">
		<cfreturn sDate>
	<cfelse>
		<cfset dDate = sDate>
		<cfset mThaiLong = ["มกราคม", "กุมภาพันธ์", "มีนาคม", "เมษายน", "พฤษภาคม", "มิถุนายน", "กรกฎาคม", "สิงหาคม", "กันยายน", "ตุลาคม", "พฤศจิกายน", "ธันวาคม"]>
		<cfset a = ListToArray(dDate,"-")>
		<cfset dDate = a[1] & " " & mThaiLong[a[2]] & " " & a[3]+543>
		<cfreturn dDate>
	</cfif>
</cffunction>
