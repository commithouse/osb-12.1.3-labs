xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://tempuri.org/";
(:: import schema at "calculator.wsdl" ::)
declare namespace ns1="http://www.calculadora.com";
(:: import schema at "Operacao.xsd" ::)

declare variable $esoma as element() (:: schema-element(ns1:entrada) ::) external;

declare function local:func($esoma as element() (:: schema-element(ns1:entrada) ::)) as element() (:: schema-element(ns2:Add) ::) {
    <ns2:Add>
        <ns2:intA>{fn:data($esoma/ns1:inteiroA)}</ns2:intA>
        <ns2:intB>{fn:data($esoma/ns1:inteiroB)}</ns2:intB>
    </ns2:Add>
};

local:func($esoma)
