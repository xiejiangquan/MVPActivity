<?xml version="1.0"?>
<recipe>

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/res/layout/activity_main.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/imp/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="root/src/app_package/imp/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${iContractName}.java" />

    <instantiate from="root/src/app_package/imp/Model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mName}.java" />

    <instantiate from="root/src/app_package/imp/View.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${vName}.java" />

    <instantiate from="root/src/app_package/imp/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
