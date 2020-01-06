<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../ReadFileDb.wsdl"/>
      <rootElement name="Cliente" namespace="http://TargetNamespace.com/ReadFileDb"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../Cliente.wsdl"/>
      <rootElement name="ClienteCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/Cliente"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.6.0(build 111214.0600.1553) AT [MON MAR 25 22:30:23 BRT 2013]. -->
?>
<xsl:stylesheet version="1.0" xmlns:imp1="http://TargetNamespace.com/ReadFileDb"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/Cliente"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/file/SOAEXPERT/ReadFile/ReadFileDb"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/SOAEXPERT/ReadBancoAdapter/Cliente"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl imp1 tns pc plt wsdl jca xsd top ns0 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <top:ClienteCollection>
      <top:Cliente>
        <top:clienteId>
          <xsl:value-of select="/imp1:Cliente/imp1:id"/>
        </top:clienteId>
        <top:nome>
          <xsl:value-of select="concat(/imp1:Cliente/imp1:nome,' ',/imp1:Cliente/imp1:sobrenome)"/>
        </top:nome>
        <top:cpf>
          <xsl:value-of select="/imp1:Cliente/imp1:cpf"/>
        </top:cpf>
      </top:Cliente>
    </top:ClienteCollection>
  </xsl:template>
</xsl:stylesheet>