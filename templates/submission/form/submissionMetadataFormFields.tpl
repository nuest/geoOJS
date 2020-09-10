{*the main template is here extended*}

<div style="clear:both;">
    {fbvFormArea id="tagitFields" title="plugins.generic.geoOJS.geospatialmetadata"}
    <p class="description">{translate key="plugins.generic.geoOJS.geospatialmetadata.description"}</p>

    {*temporal*}
    {fbvFormSection title="plugins.generic.geoOJS.geospatialmetadata.properties.temporal" for="period" inline=true}
    <p class="description">{translate key="plugins.generic.geoOJS.geospatialmetadata.properties.temporal.description"}
    </p>
    <input type="text" name="datetimes" style="width: 1116px; height: 32px; z-index: 0;" />
    <input type="text" id="temporalProperties" name="temporalProperties"
        {*style="height: 0px; width: 0px; z-index: 0; visibility: hidden;"*} />
    <input type="text" id="temporalPropertiesFromDb" name="temporalPropertiesFromDb"
        style="height: 0px; width: 0px; visibility: hidden;" value='{$temporalPropertiesFromDb}' />
    {/fbvFormSection}

    {*spatial*}
    {fbvFormSection title="plugins.generic.geoOJS.geospatialmetadata.properties.spatial" for="period" inline=true}
    <p class="description">{translate key="plugins.generic.geoOJS.geospatialmetadata.properties.spatial.description"}
    </p>
    <div id="mapdiv" style="width: 1116px; height: 400px; float: left;  z-index: 0;"></div>
    <input type="text" id="spatialProperties" name="spatialProperties" size="30" {*style="height: 0px; width: 0px; visibility: hidden;"*}>
    <input type="text" id="spatialPropertiesFromDb" name="spatialPropertiesFromDb"
        style="height: 0px; width: 0px; visibility: hidden;" value='{$spatialPropertiesFromDb}' />
    {/fbvFormSection}

    {*administrativeUnit*}
    {fbvFormSection title="plugins.generic.geoOJS.geospatialmetadata.properties.spatial.administrativeUnit" for="period"
    inline=true}
    <p class="description">{translate
        key="plugins.generic.geoOJS.geospatialmetadata.properties.spatial.administrativeUnit.description"}</p>
    <input type="text" id="administrativeUnitInput" name="administrativeUnitInput" size="30"
        onchange="changedAdministrativeUnitByAuthor()">
    <input type="text" id="administrativeUnit" name="administrativeUnit" size="30" style="visibility: hidden;">
    <input type="text" id="administrativeUnitFromDb" name="administrativeUnitFromDb"
        style="height: 0px; width: 0px; visibility: hidden;" value='{$administrativeUnitFromDb}' />
    {/fbvFormSection}
    {/fbvFormArea}
</div>

{*z-index must be changed for the daterangepicker*}
<style>
    .daterangepicker {
        direction: ltr;
        text-align: left;
        z-index: 1;
    }
</style>
{*main js script, needs to be loaded last*}
<script src="{$submissionMetadataFormFieldsJS}" type="text/javascript" defer></script>