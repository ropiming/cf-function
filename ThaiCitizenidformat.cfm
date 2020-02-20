<cffunction name="formatThaiCitizenid" hint="รูปแบบหมายเลขบัตรประชาชน">
    <cfargument name="CitizenidNumber" required="true">
    <cfif len(CitizenidNumber) EQ 13>
        <cfreturn "#left(CitizenidNumber, 1)#-#mid(CitizenidNumber, 2, 4)#-#mid(CitizenidNumber, 6, 5)#-#mid(CitizenidNumber, 11, 2)#-#right(CitizenidNumber, 1)#">
    </cfif>
    <cfreturn CitizenidNumber>
</cffunction>
