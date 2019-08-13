<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="1e+8" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" version="3.8.1-Zanzibar" labelsEnabled="0" simplifyDrawingTol="1" readOnly="0" simplifyDrawingHints="0" simplifyLocal="1" styleCategories="AllStyleCategories" simplifyMaxScale="1" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="RuleRenderer" symbollevels="1" forceraster="0" enableorderby="0">
    <rules key="{4137ce98-8dc0-4a23-ac5a-a4b6ac06232e}">
      <rule label="Lämmönsäätö" symbol="0" key="{81e482bf-6bad-4a8d-abf5-f43f0c63eb35}" filter="&quot;sum_lammonsaato_tco2&quot; > &quot;sum_sahko_tco2&quot; AND &quot;sum_lammonsaato_tco2&quot; > &quot;sum_liikenne_tco2&quot;  AND &quot;sum_lammonsaato_tco2&quot; >  &quot;sum_rakentaminen_tco2&quot; "/>
      <rule label="Sähkö yhteensä" symbol="1" key="{f782f537-4068-4299-a776-3c26986e0399}" filter="&quot;sum_sahko_tco2&quot; > &quot;sum_lammonsaato_tco2&quot; AND &quot;sum_sahko_tco2&quot; > &quot;sum_liikenne_tco2&quot; AND    &quot;sum_sahko_tco2&quot; > &quot;sum_rakentaminen_tco2&quot; "/>
      <rule label="Liikenne yhteensä" symbol="2" key="{6a0cb3ef-bd69-426b-ae31-3971fac9fb3f}" filter="&quot;sum_liikenne_tco2&quot; > &quot;sum_lammonsaato_tco2&quot;  AND  &quot;sum_liikenne_tco2&quot; >  &quot;sum_sahko_tco2&quot;  AND   &quot;sum_liikenne_tco2&quot; >   &quot;sum_rakentaminen_tco2&quot; "/>
      <rule label="Rakentaminen" symbol="3" key="{c0f03c0e-9982-4ba6-9847-444a65bed735}" filter="&quot;sum_rakentaminen_tco2&quot; > &quot;sum_lammonsaato_tco2&quot;  AND &quot;sum_rakentaminen_tco2&quot; > &quot;sum_sahko_tco2&quot; AND &quot;sum_rakentaminen_tco2&quot; > &quot;sum_liikenne_tco2&quot;"/>
    </rules>
    <symbols>
      <symbol type="fill" name="0" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer pass="1" class="CentroidFill" enabled="1" locked="0">
          <prop v="0" k="point_on_all_parts"/>
          <prop v="1" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol type="marker" name="@0@0" alpha="1" force_rhr="0" clip_to_extent="1">
            <layer pass="0" class="SimpleMarker" enabled="1" locked="0">
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
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol type="fill" name="1" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer pass="1" class="CentroidFill" enabled="1" locked="0">
          <prop v="1" k="point_on_all_parts"/>
          <prop v="0" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol type="marker" name="@1@0" alpha="1" force_rhr="0" clip_to_extent="1">
            <layer pass="0" class="SimpleMarker" enabled="1" locked="0">
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
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol type="fill" name="2" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer pass="1" class="CentroidFill" enabled="1" locked="0">
          <prop v="1" k="point_on_all_parts"/>
          <prop v="0" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol type="marker" name="@2@0" alpha="1" force_rhr="0" clip_to_extent="1">
            <layer pass="0" class="SimpleMarker" enabled="1" locked="0">
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
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol type="fill" name="3" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer pass="1" class="CentroidFill" enabled="1" locked="0">
          <prop v="1" k="point_on_all_parts"/>
          <prop v="0" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol type="marker" name="@3@0" alpha="1" force_rhr="0" clip_to_extent="1">
            <layer pass="0" class="SimpleMarker" enabled="1" locked="0">
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
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
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
      <text-style fontFamily="Sans Serif" fieldName="summa" useSubstitutions="0" fontSize="5" namedStyle="Normal" fontUnderline="0" fontCapitals="0" fontItalic="0" multilineHeight="1" fontSizeUnit="Point" textOpacity="1" blendMode="0" fontWeight="50" fontStrikeout="0" textColor="31,30,29,255" isExpression="0" previewBkgrdColor="#ffffff" fontWordSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontLetterSpacing="0">
        <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="0" bufferNoFill="1" bufferSize="1" bufferBlendMode="0" bufferSizeUnits="MM"/>
        <background shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeFillColor="255,255,255,255" shapeBlendMode="0" shapeSizeX="0" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeBorderColor="128,128,128,255" shapeSVGFile="" shapeOffsetUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetX="0" shapeRadiiX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeSizeType="0" shapeOffsetY="0" shapeRadiiUnit="MM" shapeRotation="0" shapeBorderWidth="0" shapeSizeY="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0"/>
        <shadow shadowColor="0,0,0,255" shadowOpacity="0" shadowOffsetUnit="MM" shadowUnder="0" shadowRadius="0" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowOffsetDist="1" shadowBlendMode="6"/>
        <substitutions/>
      </text-style>
      <text-format formatNumbers="1" decimals="1" wrapChar="" addDirectionSymbol="0" rightDirectionSymbol=">" reverseDirectionSymbol="0" autoWrapLength="3" leftDirectionSymbol="&lt;" useMaxLineLengthForAutoWrap="1" plussign="0" multilineAlign="4294967295" placeDirectionSymbol="0"/>
      <placement distUnits="MM" offsetUnits="MapUnit" maxCurvedCharAngleIn="25" quadOffset="7" preserveRotation="1" dist="0" geometryGenerator="" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" geometryGeneratorType="PointGeometry" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="1" placementFlags="10" xOffset="0" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" fitInPolygonOnly="0" priority="10" geometryGeneratorEnabled="0" placement="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" yOffset="60" offsetType="0" centroidWhole="1"/>
      <rendering fontLimitPixelSize="0" drawLabels="1" obstacleType="0" mergeLines="0" obstacleFactor="1" scaleMax="25000" displayAll="1" obstacle="1" labelPerPart="0" minFeatureSize="0" maxNumLabels="2000" fontMaxPixelSize="10000" scaleMin="1000" fontMinPixelSize="3" upsidedownLabels="0" zIndex="0" limitNumLabels="0" scaleVisibility="1"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" name="name" value=""/>
          <Option name="properties"/>
          <Option type="QString" name="type" value="collection"/>
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
  <LinearlyInterpolatedDiagramRenderer upperHeight="10" lowerValue="0" lowerWidth="0" lowerHeight="0" diagramType="Pie" upperValue="12138.6" upperWidth="10" attributeLegend="1" classificationAttributeExpression=" &quot;vesi_tco2&quot; + &quot;lammitys_tco2&quot; + &quot;jaahdytys_tco2&quot; + &quot;kiinteistosahko_tco2&quot; + &quot;sahko_kotitaloudet_tco2&quot; + &quot;sahko_palv_tco2&quot; + &quot;sahko_tv_tco2&quot; + &quot;hloliikenne_ap_tco2&quot; + &quot;hloliikenne_tp_tco2&quot; + &quot;tvliikenne_tco2&quot; + &quot;palvliikenne_tco2&quot; + &quot;korjaussaneeraus_tco2&quot; ">
    <DiagramCategory width="15" minimumSize="3" backgroundColor="#ffffff" opacity="1" penWidth="0.1" minScaleDenominator="1000" sizeType="MM" barWidth="5" sizeScale="3x:0,0,0,0,0,0" enabled="0" scaleDependency="Area" lineSizeType="MM" penColor="#ffffff" penAlpha="255" maxScaleDenominator="50000" rotationOffset="270" lineSizeScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" diagramOrientation="Up" height="15" scaleBasedVisibility="1" backgroundAlpha="255">
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
  <DiagramLayerSettings showAll="1" dist="0" zIndex="0" linePlacementFlags="18" placement="4" priority="10" obstacle="0">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
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
    <field name="asukkaat">
      <editWidget type="Range">
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
    <alias index="19" field="asukkaat" name=""/>
    <alias index="20" field="vuosi" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="xyind" expression="" applyOnUpdate="0"/>
    <default field="tilat_vesi_tco2" expression="" applyOnUpdate="0"/>
    <default field="tilat_lammitys_tco2" expression="" applyOnUpdate="0"/>
    <default field="tilat_jaahdytys_tco2" expression="" applyOnUpdate="0"/>
    <default field="sahko_kiinteistot_tco2" expression="" applyOnUpdate="0"/>
    <default field="sahko_kotitaloudet_tco2" expression="" applyOnUpdate="0"/>
    <default field="sahko_palv_tco2" expression="" applyOnUpdate="0"/>
    <default field="sahko_tv_tco2" expression="" applyOnUpdate="0"/>
    <default field="liikenne_hlo_tco2" expression="" applyOnUpdate="0"/>
    <default field="liikenne_tv_tco2" expression="" applyOnUpdate="0"/>
    <default field="liikenne_palv_tco2" expression="" applyOnUpdate="0"/>
    <default field="rak_korjaussaneeraus_tco2" expression="" applyOnUpdate="0"/>
    <default field="rak_purku_tco2" expression="" applyOnUpdate="0"/>
    <default field="rak_uudis_tco2" expression="" applyOnUpdate="0"/>
    <default field="sum_yhteensa_tco2" expression="" applyOnUpdate="0"/>
    <default field="sum_lammonsaato_tco2" expression="" applyOnUpdate="0"/>
    <default field="sum_liikenne_tco2" expression="" applyOnUpdate="0"/>
    <default field="sum_sahko_tco2" expression="" applyOnUpdate="0"/>
    <default field="sum_rakentaminen_tco2" expression="" applyOnUpdate="0"/>
    <default field="asukkaat" expression="" applyOnUpdate="0"/>
    <default field="vuosi" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="xyind" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="tilat_vesi_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="tilat_lammitys_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="tilat_jaahdytys_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="sahko_kiinteistot_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="sahko_kotitaloudet_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="sahko_palv_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="sahko_tv_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="liikenne_hlo_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="liikenne_tv_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="liikenne_palv_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="rak_korjaussaneeraus_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="rak_purku_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="rak_uudis_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="sum_yhteensa_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="sum_lammonsaato_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="sum_liikenne_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="sum_sahko_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="sum_rakentaminen_tco2" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="asukkaat" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="vuosi" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="xyind" desc="" exp=""/>
    <constraint field="tilat_vesi_tco2" desc="" exp=""/>
    <constraint field="tilat_lammitys_tco2" desc="" exp=""/>
    <constraint field="tilat_jaahdytys_tco2" desc="" exp=""/>
    <constraint field="sahko_kiinteistot_tco2" desc="" exp=""/>
    <constraint field="sahko_kotitaloudet_tco2" desc="" exp=""/>
    <constraint field="sahko_palv_tco2" desc="" exp=""/>
    <constraint field="sahko_tv_tco2" desc="" exp=""/>
    <constraint field="liikenne_hlo_tco2" desc="" exp=""/>
    <constraint field="liikenne_tv_tco2" desc="" exp=""/>
    <constraint field="liikenne_palv_tco2" desc="" exp=""/>
    <constraint field="rak_korjaussaneeraus_tco2" desc="" exp=""/>
    <constraint field="rak_purku_tco2" desc="" exp=""/>
    <constraint field="rak_uudis_tco2" desc="" exp=""/>
    <constraint field="sum_yhteensa_tco2" desc="" exp=""/>
    <constraint field="sum_lammonsaato_tco2" desc="" exp=""/>
    <constraint field="sum_liikenne_tco2" desc="" exp=""/>
    <constraint field="sum_sahko_tco2" desc="" exp=""/>
    <constraint field="sum_rakentaminen_tco2" desc="" exp=""/>
    <constraint field="asukkaat" desc="" exp=""/>
    <constraint field="vuosi" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="&quot;liikenne_tv_tco2&quot;">
    <columns>
      <column hidden="0" type="field" name="xyind" width="-1"/>
      <column hidden="0" type="field" name="vuosi" width="81"/>
      <column hidden="0" type="field" name="sahko_kotitaloudet_tco2" width="151"/>
      <column hidden="0" type="field" name="sahko_palv_tco2" width="117"/>
      <column hidden="0" type="field" name="sahko_tv_tco2" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
      <column hidden="0" type="field" name="tilat_vesi_tco2" width="-1"/>
      <column hidden="0" type="field" name="tilat_lammitys_tco2" width="132"/>
      <column hidden="0" type="field" name="tilat_jaahdytys_tco2" width="130"/>
      <column hidden="0" type="field" name="sahko_kiinteistot_tco2" width="147"/>
      <column hidden="0" type="field" name="liikenne_hlo_tco2" width="121"/>
      <column hidden="0" type="field" name="liikenne_tv_tco2" width="119"/>
      <column hidden="0" type="field" name="liikenne_palv_tco2" width="129"/>
      <column hidden="0" type="field" name="rak_korjaussaneeraus_tco2" width="195"/>
      <column hidden="0" type="field" name="rak_purku_tco2" width="-1"/>
      <column hidden="0" type="field" name="rak_uudis_tco2" width="141"/>
      <column hidden="0" type="field" name="sum_yhteensa_tco2" width="176"/>
      <column hidden="0" type="field" name="sum_lammonsaato_tco2" width="177"/>
      <column hidden="0" type="field" name="sum_liikenne_tco2" width="140"/>
      <column hidden="0" type="field" name="sum_sahko_tco2" width="130"/>
      <column hidden="0" type="field" name="sum_rakentaminen_tco2" width="204"/>
      <column hidden="0" type="field" name="asukkaat" width="-1"/>
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
    <field name="asukkaat" editable="1"/>
    <field name="fid" editable="1"/>
    <field name="hloliikenne_ap_tco2" editable="1"/>
    <field name="hloliikenne_tp_tco2" editable="1"/>
    <field name="id" editable="1"/>
    <field name="id_0" editable="1"/>
    <field name="jaahdytys_tco2" editable="1"/>
    <field name="kiinteistosahko_tco2" editable="1"/>
    <field name="korjaussaneeraus_tco2" editable="1"/>
    <field name="lammitys_tco2" editable="1"/>
    <field name="liikenne_hlo_tco2" editable="1"/>
    <field name="liikenne_palv_tco2" editable="1"/>
    <field name="liikenne_tv_tco2" editable="1"/>
    <field name="liikenne_yht" editable="1"/>
    <field name="palvliikenne_tco2" editable="1"/>
    <field name="rak_korjaussaneeraus_tco2" editable="1"/>
    <field name="rak_purku_tco2" editable="1"/>
    <field name="rak_uudis_tco2" editable="1"/>
    <field name="sahko_kiinteistot_tco2" editable="1"/>
    <field name="sahko_kotitaloudet_tco2" editable="1"/>
    <field name="sahko_palv_tco2" editable="1"/>
    <field name="sahko_tv_tco2" editable="1"/>
    <field name="sahko_yht" editable="1"/>
    <field name="sum_lammonsaato_tco2" editable="1"/>
    <field name="sum_liikenne_tco2" editable="1"/>
    <field name="sum_rakentaminen_tco2" editable="1"/>
    <field name="sum_sahko_tco2" editable="1"/>
    <field name="sum_yhteensa_tco2" editable="1"/>
    <field name="summa" editable="1"/>
    <field name="tilat_jaahdytys_tco2" editable="1"/>
    <field name="tilat_lammitys_tco2" editable="1"/>
    <field name="tilat_vesi_tco2" editable="1"/>
    <field name="tvliikenne_tco2" editable="1"/>
    <field name="vesi_tco2" editable="1"/>
    <field name="vuosi" editable="1"/>
    <field name="xyind" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="asukkaat" labelOnTop="0"/>
    <field name="fid" labelOnTop="0"/>
    <field name="hloliikenne_ap_tco2" labelOnTop="0"/>
    <field name="hloliikenne_tp_tco2" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="id_0" labelOnTop="0"/>
    <field name="jaahdytys_tco2" labelOnTop="0"/>
    <field name="kiinteistosahko_tco2" labelOnTop="0"/>
    <field name="korjaussaneeraus_tco2" labelOnTop="0"/>
    <field name="lammitys_tco2" labelOnTop="0"/>
    <field name="liikenne_hlo_tco2" labelOnTop="0"/>
    <field name="liikenne_palv_tco2" labelOnTop="0"/>
    <field name="liikenne_tv_tco2" labelOnTop="0"/>
    <field name="liikenne_yht" labelOnTop="0"/>
    <field name="palvliikenne_tco2" labelOnTop="0"/>
    <field name="rak_korjaussaneeraus_tco2" labelOnTop="0"/>
    <field name="rak_purku_tco2" labelOnTop="0"/>
    <field name="rak_uudis_tco2" labelOnTop="0"/>
    <field name="sahko_kiinteistot_tco2" labelOnTop="0"/>
    <field name="sahko_kotitaloudet_tco2" labelOnTop="0"/>
    <field name="sahko_palv_tco2" labelOnTop="0"/>
    <field name="sahko_tv_tco2" labelOnTop="0"/>
    <field name="sahko_yht" labelOnTop="0"/>
    <field name="sum_lammonsaato_tco2" labelOnTop="0"/>
    <field name="sum_liikenne_tco2" labelOnTop="0"/>
    <field name="sum_rakentaminen_tco2" labelOnTop="0"/>
    <field name="sum_sahko_tco2" labelOnTop="0"/>
    <field name="sum_yhteensa_tco2" labelOnTop="0"/>
    <field name="summa" labelOnTop="0"/>
    <field name="tilat_jaahdytys_tco2" labelOnTop="0"/>
    <field name="tilat_lammitys_tco2" labelOnTop="0"/>
    <field name="tilat_vesi_tco2" labelOnTop="0"/>
    <field name="tvliikenne_tco2" labelOnTop="0"/>
    <field name="vesi_tco2" labelOnTop="0"/>
    <field name="vuosi" labelOnTop="0"/>
    <field name="xyind" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>fid</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
