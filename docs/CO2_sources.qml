<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" simplifyMaxScale="1" styleCategories="AllStyleCategories" version="3.8.1-Zanzibar" minScale="1e+8" simplifyDrawingHints="0" hasScaleBasedVisibilityFlag="0" maxScale="0" labelsEnabled="0" simplifyDrawingTol="1" simplifyAlgorithm="0" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="RuleRenderer" forceraster="0" enableorderby="0" symbollevels="1">
    <rules key="{4137ce98-8dc0-4a23-ac5a-a4b6ac06232e}">
      <rule key="{81e482bf-6bad-4a8d-abf5-f43f0c63eb35}" symbol="0" label="Tilojen lämmitys" filter=" &quot;tilat_lammitys_tco2&quot; > &quot;tilat_vesi_tco2&quot; AND   &quot;tilat_lammitys_tco2&quot;  >  &quot;tilat_jaahdytys_tco2&quot;  AND   &quot;tilat_lammitys_tco2&quot;  >  &quot;sum_sahko_tco2&quot; AND   &quot;tilat_lammitys_tco2&quot;  >  &quot;sum_liikenne_tco2&quot;  AND  &quot;tilat_lammitys_tco2&quot;  >    &quot;rak_korjaussaneeraus_tco2&quot; "/>
      <rule key="{f782f537-4068-4299-a776-3c26986e0399}" symbol="1" label="Sähkö yhteensä" filter="&quot;sum_sahko_tco2&quot; > &quot;tilat_vesi_tco2&quot; AND   &quot;sum_sahko_tco2&quot; > &quot;tilat_lammitys_tco2&quot;  AND   &quot;sum_sahko_tco2&quot;  >  &quot;tilat_jaahdytys_tco2&quot; AND   &quot;sum_sahko_tco2&quot; >   &quot;sum_liikenne_tco2&quot;  AND    &quot;sum_sahko_tco2&quot; >  &#xd;&#xa;&quot;rak_korjaussaneeraus_tco2&quot; "/>
      <rule key="{6a0cb3ef-bd69-426b-ae31-3971fac9fb3f}" symbol="2" label="Liikenne yhteensä" filter=" &quot;sum_liikenne_tco2&quot;> &quot;tilat_vesi_tco2&quot; AND     &quot;sum_liikenne_tco2&quot;> &quot;tilat_lammitys_tco2&quot;  AND     &quot;sum_liikenne_tco2&quot; >  &quot;tilat_jaahdytys_tco2&quot; AND &quot;sum_liikenne_tco2&quot;>  &quot;sum_sahko_tco2&quot;  AND   &quot;sum_liikenne_tco2&quot;>   &quot;rak_korjaussaneeraus_tco2&quot; "/>
      <rule key="{c0f03c0e-9982-4ba6-9847-444a65bed735}" symbol="3" label="Korjaussaneeraus" filter="&quot;rak_korjaussaneeraus_tco2&quot; > &quot;tilat_vesi_tco2&quot; AND &quot;rak_korjaussaneeraus_tco2&quot; > &quot;tilat_lammitys_tco2&quot;  AND &quot;rak_korjaussaneeraus_tco2&quot; > &quot;tilat_jaahdytys_tco2&quot; AND &quot;rak_korjaussaneeraus_tco2&quot; > &quot;sum_sahko_tco2&quot; AND &quot;rak_korjaussaneeraus_tco2&quot; > &quot;sum_liikenne_tco2&quot;"/>
    </rules>
    <symbols>
      <symbol type="fill" clip_to_extent="1" alpha="1" force_rhr="0" name="0">
        <layer class="CentroidFill" enabled="1" locked="0" pass="1">
          <prop v="0" k="point_on_all_parts"/>
          <prop v="1" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol type="marker" clip_to_extent="1" alpha="1" force_rhr="0" name="@0@0">
            <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
              <prop v="0" k="angle"/>
              <prop v="255,78,0,0" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="square" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="79,79,79,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="0.2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="1" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MM" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" alpha="1" force_rhr="0" name="1">
        <layer class="CentroidFill" enabled="1" locked="0" pass="1">
          <prop v="1" k="point_on_all_parts"/>
          <prop v="0" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol type="marker" clip_to_extent="1" alpha="1" force_rhr="0" name="@1@0">
            <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
              <prop v="0" k="angle"/>
              <prop v="43,43,43,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="triangle" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="no" k="outline_style"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="1.6" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MM" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" alpha="1" force_rhr="0" name="2">
        <layer class="CentroidFill" enabled="1" locked="0" pass="1">
          <prop v="1" k="point_on_all_parts"/>
          <prop v="0" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol type="marker" clip_to_extent="1" alpha="1" force_rhr="0" name="@2@0">
            <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
              <prop v="0" k="angle"/>
              <prop v="170,0,255,0" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="circle" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="170,0,255,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="0.4" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="1.2" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MM" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" alpha="1" force_rhr="0" name="3">
        <layer class="CentroidFill" enabled="1" locked="0" pass="1">
          <prop v="1" k="point_on_all_parts"/>
          <prop v="0" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol type="marker" clip_to_extent="1" alpha="1" force_rhr="0" name="@3@0">
            <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
              <prop v="0" k="angle"/>
              <prop v="9,30,16,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="diamond" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="no" k="outline_style"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="1.2" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MM" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings>
      <text-style fieldName="summa" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontItalic="0" fontCapitals="0" previewBkgrdColor="#ffffff" fontSize="5" blendMode="0" fontStrikeout="0" useSubstitutions="0" fontWeight="50" isExpression="0" fontUnderline="0" fontLetterSpacing="0" fontSizeUnit="Point" namedStyle="Normal" fontWordSpacing="0" textOpacity="1" multilineHeight="1" textColor="31,30,29,255" fontFamily="Sans Serif">
        <text-buffer bufferOpacity="1" bufferColor="255,255,255,255" bufferNoFill="1" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferSize="1" bufferJoinStyle="128" bufferSizeUnits="MM"/>
        <background shapeRadiiUnit="MM" shapeBlendMode="0" shapeType="0" shapeOffsetUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeJoinStyle="64" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetY="0" shapeSizeX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeRadiiY="0" shapeSizeUnit="MM" shapeRotationType="0" shapeSizeY="0" shapeOpacity="1" shapeRotation="0" shapeDraw="0" shapeBorderWidthUnit="MM" shapeSizeType="0"/>
        <shadow shadowBlendMode="6" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowUnder="0" shadowScale="100" shadowRadius="0" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowColor="0,0,0,255" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0" shadowRadiusUnit="MM"/>
        <substitutions/>
      </text-style>
      <text-format useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="1" reverseDirectionSymbol="0" multilineAlign="4294967295" addDirectionSymbol="0" formatNumbers="1" placeDirectionSymbol="0" leftDirectionSymbol="&lt;" wrapChar="" autoWrapLength="3" plussign="0"/>
      <placement yOffset="60" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" maxCurvedCharAngleIn="25" fitInPolygonOnly="0" preserveRotation="1" offsetType="0" dist="0" priority="10" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" centroidInside="1" geometryGenerator="" centroidWhole="1" distMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" xOffset="0" repeatDistance="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" geometryGeneratorEnabled="0" quadOffset="7" geometryGeneratorType="PointGeometry" placement="1" offsetUnits="MapUnit"/>
      <rendering labelPerPart="0" mergeLines="0" displayAll="1" fontLimitPixelSize="0" scaleVisibility="1" maxNumLabels="2000" zIndex="0" fontMinPixelSize="3" fontMaxPixelSize="10000" scaleMax="25000" obstacleFactor="1" minFeatureSize="0" obstacle="1" upsidedownLabels="0" obstacleType="0" limitNumLabels="0" scaleMin="1000" drawLabels="1"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" value="" name="name"/>
          <Option name="properties"/>
          <Option type="QString" value="collection" name="type"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <customproperties>
    <property key="dualview/previewExpressions" value="fid"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <LinearlyInterpolatedDiagramRenderer lowerWidth="0" diagramType="Pie" lowerHeight="0" upperWidth="10" upperHeight="10" classificationAttributeExpression=" &quot;vesi_tco2&quot; + &quot;lammitys_tco2&quot; + &quot;jaahdytys_tco2&quot; + &quot;kiinteistosahko_tco2&quot; + &quot;sahko_kotitaloudet_tco2&quot; + &quot;sahko_palv_tco2&quot; + &quot;sahko_tv_tco2&quot; + &quot;hloliikenne_ap_tco2&quot; + &quot;hloliikenne_tp_tco2&quot; + &quot;tvliikenne_tco2&quot; + &quot;palvliikenne_tco2&quot; + &quot;korjaussaneeraus_tco2&quot; " upperValue="12138.6" attributeLegend="1" lowerValue="0">
    <DiagramCategory penColor="#ffffff" scaleBasedVisibility="1" width="15" enabled="0" backgroundAlpha="255" rotationOffset="270" minScaleDenominator="1000" minimumSize="3" scaleDependency="Area" lineSizeScale="3x:0,0,0,0,0,0" backgroundColor="#ffffff" penAlpha="255" labelPlacementMethod="XHeight" height="15" lineSizeType="MM" sizeScale="3x:0,0,0,0,0,0" sizeType="MM" diagramOrientation="Up" penWidth="0.1" opacity="1" maxScaleDenominator="50000" barWidth="5">
      <fontProperties description="MS Shell Dlg 2,7.8,-1,5,50,0,0,0,0,0" style=""/>
      <attribute label="Lämmitys" field="lammitys_tco2" color="#ca4d41"/>
      <attribute label="Vesi" field="vesi_tco2" color="#418aca"/>
      <attribute label="Henkilöliikenne, ap" field="hloliikenne_ap_tco2" color="#c551bc"/>
      <attribute label="Sähkö, kotitaloudet" field="sahko_kotitaloudet_tco2" color="#ecff3b"/>
      <attribute label="Palveluliikenne" field="palvliikenne_tco2" color="#745d7c"/>
      <attribute label="Sähkö, palvelut" field="sahko_palv_tco2" color="#decd98"/>
      <attribute label="Liikenne, tv" field="tvliikenne_tco2" color="#661f98"/>
      <attribute label="Sähkö, tv" field="sahko_tv_tco2" color="#bbf7d6"/>
      <attribute label="Kiinteistösähkö" field="kiinteistosahko_tco2" color="#3a2f6c"/>
      <attribute label="Henkilöliikenne, tp" field="hloliikenne_tp_tco2" color="#4dee3b"/>
      <attribute label="Korjaussaneeraus" field="korjaussaneeraus_tco2" color="#d6a4ff"/>
      <attribute label="Jäähdytys" field="jaahdytys_tco2" color="#51c7bc"/>
    </DiagramCategory>
  </LinearlyInterpolatedDiagramRenderer>
  <DiagramLayerSettings placement="4" dist="0" showAll="1" obstacle="0" priority="10" linePlacementFlags="18" zIndex="0">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="xyind">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="tilat_vesi_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="tilat_lammitys_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="tilat_jaahdytys_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sahko_kiinteistot_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sahko_kotitaloudet_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sahko_palv_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sahko_tv_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="liikenne_hlo_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="liikenne_tv_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="liikenne_palv_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rak_korjaussaneeraus_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rak_purku_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rak_uudis_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sum_yhteensa_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sum_lammonsaato_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sum_liikenne_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sum_sahko_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sum_rakentaminen_tco2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="vuosi">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" field="xyind" name=""/>
    <alias index="1" field="tilat_vesi_tco2" name=""/>
    <alias index="2" field="tilat_lammitys_tco2" name=""/>
    <alias index="3" field="tilat_jaahdytys_tco2" name=""/>
    <alias index="4" field="sahko_kiinteistot_tco2" name=""/>
    <alias index="5" field="sahko_kotitaloudet_tco2" name=""/>
    <alias index="6" field="sahko_palv_tco2" name=""/>
    <alias index="7" field="sahko_tv_tco2" name=""/>
    <alias index="8" field="liikenne_hlo_tco2" name=""/>
    <alias index="9" field="liikenne_tv_tco2" name=""/>
    <alias index="10" field="liikenne_palv_tco2" name=""/>
    <alias index="11" field="rak_korjaussaneeraus_tco2" name=""/>
    <alias index="12" field="rak_purku_tco2" name=""/>
    <alias index="13" field="rak_uudis_tco2" name=""/>
    <alias index="14" field="sum_yhteensa_tco2" name=""/>
    <alias index="15" field="sum_lammonsaato_tco2" name=""/>
    <alias index="16" field="sum_liikenne_tco2" name=""/>
    <alias index="17" field="sum_sahko_tco2" name=""/>
    <alias index="18" field="sum_rakentaminen_tco2" name=""/>
    <alias index="19" field="vuosi" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="xyind" expression=""/>
    <default applyOnUpdate="0" field="tilat_vesi_tco2" expression=""/>
    <default applyOnUpdate="0" field="tilat_lammitys_tco2" expression=""/>
    <default applyOnUpdate="0" field="tilat_jaahdytys_tco2" expression=""/>
    <default applyOnUpdate="0" field="sahko_kiinteistot_tco2" expression=""/>
    <default applyOnUpdate="0" field="sahko_kotitaloudet_tco2" expression=""/>
    <default applyOnUpdate="0" field="sahko_palv_tco2" expression=""/>
    <default applyOnUpdate="0" field="sahko_tv_tco2" expression=""/>
    <default applyOnUpdate="0" field="liikenne_hlo_tco2" expression=""/>
    <default applyOnUpdate="0" field="liikenne_tv_tco2" expression=""/>
    <default applyOnUpdate="0" field="liikenne_palv_tco2" expression=""/>
    <default applyOnUpdate="0" field="rak_korjaussaneeraus_tco2" expression=""/>
    <default applyOnUpdate="0" field="rak_purku_tco2" expression=""/>
    <default applyOnUpdate="0" field="rak_uudis_tco2" expression=""/>
    <default applyOnUpdate="0" field="sum_yhteensa_tco2" expression=""/>
    <default applyOnUpdate="0" field="sum_lammonsaato_tco2" expression=""/>
    <default applyOnUpdate="0" field="sum_liikenne_tco2" expression=""/>
    <default applyOnUpdate="0" field="sum_sahko_tco2" expression=""/>
    <default applyOnUpdate="0" field="sum_rakentaminen_tco2" expression=""/>
    <default applyOnUpdate="0" field="vuosi" expression=""/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="xyind" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="tilat_vesi_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="tilat_lammitys_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="tilat_jaahdytys_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="sahko_kiinteistot_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="sahko_kotitaloudet_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="sahko_palv_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="sahko_tv_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="liikenne_hlo_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="liikenne_tv_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="liikenne_palv_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="rak_korjaussaneeraus_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="rak_purku_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="rak_uudis_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="sum_yhteensa_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="sum_lammonsaato_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="sum_liikenne_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="sum_sahko_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="sum_rakentaminen_tco2" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" constraints="0" field="vuosi" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="xyind"/>
    <constraint desc="" exp="" field="tilat_vesi_tco2"/>
    <constraint desc="" exp="" field="tilat_lammitys_tco2"/>
    <constraint desc="" exp="" field="tilat_jaahdytys_tco2"/>
    <constraint desc="" exp="" field="sahko_kiinteistot_tco2"/>
    <constraint desc="" exp="" field="sahko_kotitaloudet_tco2"/>
    <constraint desc="" exp="" field="sahko_palv_tco2"/>
    <constraint desc="" exp="" field="sahko_tv_tco2"/>
    <constraint desc="" exp="" field="liikenne_hlo_tco2"/>
    <constraint desc="" exp="" field="liikenne_tv_tco2"/>
    <constraint desc="" exp="" field="liikenne_palv_tco2"/>
    <constraint desc="" exp="" field="rak_korjaussaneeraus_tco2"/>
    <constraint desc="" exp="" field="rak_purku_tco2"/>
    <constraint desc="" exp="" field="rak_uudis_tco2"/>
    <constraint desc="" exp="" field="sum_yhteensa_tco2"/>
    <constraint desc="" exp="" field="sum_lammonsaato_tco2"/>
    <constraint desc="" exp="" field="sum_liikenne_tco2"/>
    <constraint desc="" exp="" field="sum_sahko_tco2"/>
    <constraint desc="" exp="" field="sum_rakentaminen_tco2"/>
    <constraint desc="" exp="" field="vuosi"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="&quot;liikenne_tv_tco2&quot;" sortOrder="0">
    <columns>
      <column type="field" width="-1" hidden="0" name="xyind"/>
      <column type="field" width="81" hidden="0" name="vuosi"/>
      <column type="field" width="151" hidden="0" name="sahko_kotitaloudet_tco2"/>
      <column type="field" width="117" hidden="0" name="sahko_palv_tco2"/>
      <column type="field" width="-1" hidden="0" name="sahko_tv_tco2"/>
      <column type="actions" width="-1" hidden="1"/>
      <column type="field" width="-1" hidden="0" name="tilat_vesi_tco2"/>
      <column type="field" width="132" hidden="0" name="tilat_lammitys_tco2"/>
      <column type="field" width="130" hidden="0" name="tilat_jaahdytys_tco2"/>
      <column type="field" width="147" hidden="0" name="sahko_kiinteistot_tco2"/>
      <column type="field" width="121" hidden="0" name="liikenne_hlo_tco2"/>
      <column type="field" width="119" hidden="0" name="liikenne_tv_tco2"/>
      <column type="field" width="129" hidden="0" name="liikenne_palv_tco2"/>
      <column type="field" width="195" hidden="0" name="rak_korjaussaneeraus_tco2"/>
      <column type="field" width="-1" hidden="0" name="rak_purku_tco2"/>
      <column type="field" width="141" hidden="0" name="rak_uudis_tco2"/>
      <column type="field" width="176" hidden="0" name="sum_yhteensa_tco2"/>
      <column type="field" width="177" hidden="0" name="sum_lammonsaato_tco2"/>
      <column type="field" width="140" hidden="0" name="sum_liikenne_tco2"/>
      <column type="field" width="130" hidden="0" name="sum_sahko_tco2"/>
      <column type="field" width="204" hidden="0" name="sum_rakentaminen_tco2"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="fid"/>
    <field editable="1" name="hloliikenne_ap_tco2"/>
    <field editable="1" name="hloliikenne_tp_tco2"/>
    <field editable="1" name="id"/>
    <field editable="1" name="id_0"/>
    <field editable="1" name="jaahdytys_tco2"/>
    <field editable="1" name="kiinteistosahko_tco2"/>
    <field editable="1" name="korjaussaneeraus_tco2"/>
    <field editable="1" name="lammitys_tco2"/>
    <field editable="1" name="liikenne_hlo_tco2"/>
    <field editable="1" name="liikenne_palv_tco2"/>
    <field editable="1" name="liikenne_tv_tco2"/>
    <field editable="1" name="liikenne_yht"/>
    <field editable="1" name="palvliikenne_tco2"/>
    <field editable="1" name="rak_korjaussaneeraus_tco2"/>
    <field editable="1" name="rak_purku_tco2"/>
    <field editable="1" name="rak_uudis_tco2"/>
    <field editable="1" name="sahko_kiinteistot_tco2"/>
    <field editable="1" name="sahko_kotitaloudet_tco2"/>
    <field editable="1" name="sahko_palv_tco2"/>
    <field editable="1" name="sahko_tv_tco2"/>
    <field editable="1" name="sahko_yht"/>
    <field editable="1" name="sum_lammonsaato_tco2"/>
    <field editable="1" name="sum_liikenne_tco2"/>
    <field editable="1" name="sum_rakentaminen_tco2"/>
    <field editable="1" name="sum_sahko_tco2"/>
    <field editable="1" name="sum_yhteensa_tco2"/>
    <field editable="1" name="summa"/>
    <field editable="1" name="tilat_jaahdytys_tco2"/>
    <field editable="1" name="tilat_lammitys_tco2"/>
    <field editable="1" name="tilat_vesi_tco2"/>
    <field editable="1" name="tvliikenne_tco2"/>
    <field editable="1" name="vesi_tco2"/>
    <field editable="1" name="vuosi"/>
    <field editable="1" name="xyind"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="fid"/>
    <field labelOnTop="0" name="hloliikenne_ap_tco2"/>
    <field labelOnTop="0" name="hloliikenne_tp_tco2"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="id_0"/>
    <field labelOnTop="0" name="jaahdytys_tco2"/>
    <field labelOnTop="0" name="kiinteistosahko_tco2"/>
    <field labelOnTop="0" name="korjaussaneeraus_tco2"/>
    <field labelOnTop="0" name="lammitys_tco2"/>
    <field labelOnTop="0" name="liikenne_hlo_tco2"/>
    <field labelOnTop="0" name="liikenne_palv_tco2"/>
    <field labelOnTop="0" name="liikenne_tv_tco2"/>
    <field labelOnTop="0" name="liikenne_yht"/>
    <field labelOnTop="0" name="palvliikenne_tco2"/>
    <field labelOnTop="0" name="rak_korjaussaneeraus_tco2"/>
    <field labelOnTop="0" name="rak_purku_tco2"/>
    <field labelOnTop="0" name="rak_uudis_tco2"/>
    <field labelOnTop="0" name="sahko_kiinteistot_tco2"/>
    <field labelOnTop="0" name="sahko_kotitaloudet_tco2"/>
    <field labelOnTop="0" name="sahko_palv_tco2"/>
    <field labelOnTop="0" name="sahko_tv_tco2"/>
    <field labelOnTop="0" name="sahko_yht"/>
    <field labelOnTop="0" name="sum_lammonsaato_tco2"/>
    <field labelOnTop="0" name="sum_liikenne_tco2"/>
    <field labelOnTop="0" name="sum_rakentaminen_tco2"/>
    <field labelOnTop="0" name="sum_sahko_tco2"/>
    <field labelOnTop="0" name="sum_yhteensa_tco2"/>
    <field labelOnTop="0" name="summa"/>
    <field labelOnTop="0" name="tilat_jaahdytys_tco2"/>
    <field labelOnTop="0" name="tilat_lammitys_tco2"/>
    <field labelOnTop="0" name="tilat_vesi_tco2"/>
    <field labelOnTop="0" name="tvliikenne_tco2"/>
    <field labelOnTop="0" name="vesi_tco2"/>
    <field labelOnTop="0" name="vuosi"/>
    <field labelOnTop="0" name="xyind"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>fid</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
