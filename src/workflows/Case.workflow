<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_for_Case_Question</fullName>
        <description>Email Alert for Case Question</description>
        <protected>false</protected>
        <recipients>
            <recipient>jagrelot@orgdemo.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SUPPORTCaseescalationnotificationSAMPLE</template>
    </alerts>
    <fieldUpdates>
        <fullName>Test</fullName>
        <field>Origin</field>
        <literalValue>Email</literalValue>
        <name>Test</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Question Email Alert</fullName>
        <actions>
            <name>Email_Alert_for_Case_Question</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>equals</operation>
            <value>Question</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Test</fullName>
        <actions>
            <name>Email_Alert_for_Case_Question</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Test</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>true</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>