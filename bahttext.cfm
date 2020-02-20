<cffunction name="bahttext" returntype="string">
	<cfargument name="n" type="string" default="">
    <cfset amount_number = numberformat(n, '.99')>
    <cfset pt = Find('.', amount_number)>
    <cfset number = fraction = "">
    <cfif pt eq 0>
    	<cfset number = amount_number>
    <cfelse>
    	<cfset number = Mid(amount_number, 1, pt - 1)>
        <cfset fraction = mid(amount_number, pt + 1, len(amount_number))>
    </cfif>
    <cfset rets = "">
    <cfset baht = ReadNumber(number)>
    <cfif baht neq "">
    	<cfset rets &= baht & "บาท">
    </cfif>
    <cfset satang = ReadNumber(fraction)>
    <cfif satang neq "">
        <cfset rets &= (satang & "สตางค์")>
    <cfelse>
    	<cfset rets &= "ถ้วน">
    </cfif>

   <cfreturn rets>
</cffunction>
<cffunction name="ReadNumber" returntype="string">
	<cfargument name="number" type="string" default="">
	<cfset position_call = ["แสน", "หมื่น", "พัน", "ร้อย", "สิบ", ""]>
    <cfset number_call = ["", "หนึ่ง", "สอง", "สาม", "สี่", "ห้า", "หก", "เจ็ด", "แปด", "เก้า"]>
    <cfset number = number + 0>
    <cfset ret = "">
    <cfif number eq 0>
    	<cfreturn ret>
    </cfif>
    <cfif number gt 1000000>
        <cfset ret = ReadNumber(int(number / 1000000)) & "ล้าน">
        <cfset number = int(number MOD 1000000)>
    </cfif>
    <cfset divider = 100000>
    <cfset pos = 0>
    
    <cfloop condition="number gt 0">
    	<cfset d = int(number / divider)>
        <cfif (divider eq 10) && (d eq 2)>
        	<cfset ret &= "ยี่">
        <cfelseif (divider eq 10) && (d eq 1)>
        	<cfset ret &= "">
        <cfelseif (divider eq 1) && (d eq 1) && (ret neq "")>
        	<cfset ret &= "เอ็ด">
        <cfelse>
        	<cfset ret &= number_call[d + 1]>
        </cfif>
		<cfif d neq 0>
			<cfset ret &= position_call[pos+1]>
        <cfelse>
			<cfset ret &= "">
        </cfif>
        <cfset number = number mod divider>
        <cfset divider = divider / 10>
        <cfset pos++>
    </cfloop>
    <cfreturn ret>
</cffunction>
