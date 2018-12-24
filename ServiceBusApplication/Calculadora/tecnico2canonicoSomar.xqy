xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://tempuri.org/";
(:: import schema at "calculator.wsdl" ::)
declare namespace ns2="http://www.calculadora.com";
(:: import schema at "Operacao.xsd" ::)

declare variable $ssoma as element() (:: schema-element(ns1:AddResponse) ::) external;

declare function local:func($ssoma as element() (:: schema-element(ns1:AddResponse) ::)) as element() (:: schema-element(ns2:saida) ::) {
    <ns2:saida>
        <ns2:resultado>{fn:data($ssoma/ns1:AddResult)}</ns2:resultado>
    </ns2:saida>
};

local:func($ssoma)
