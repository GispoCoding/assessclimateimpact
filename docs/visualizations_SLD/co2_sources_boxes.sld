<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:se="http://www.opengis.net/se" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc">
  <NamedLayer>
    <se:Name>seuranta_alueet_CO2_t</se:Name>
    <UserStyle>
      <se:Name>seuranta_alueet_CO2_t</se:Name>
      <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>A</se:Name>
          <se:Description>
            <se:Title>A</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>kayttotarkoitus</ogc:PropertyName>
              <ogc:Literal>A</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
           <se:PolygonSymbolizer>
            <se:Fill>
              <se:GraphicFill>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>shape://slash</se:WellKnownName>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#cab598</se:SvgParameter>
                      <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                      <se:SvgParameter name="stroke-opacity">0.5</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>5</se:Size>
                </se:Graphic>
              </se:GraphicFill>
            </se:Fill>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#f7fbff</se:SvgParameter>
              <se:SvgParameter name="stroke-opacity">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
      
        <se:Rule>
          <se:Name>C</se:Name>
          <se:Description>
            <se:Title>C</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>kayttotarkoitus</ogc:PropertyName>
              <ogc:Literal>C</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
                     <se:PolygonSymbolizer>
            <se:Fill>
              <se:GraphicFill>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>shape://slash</se:WellKnownName>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#FF7373</se:SvgParameter>
                      <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                      <se:SvgParameter name="stroke-opacity">0.5</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>5</se:Size>
                </se:Graphic>
              </se:GraphicFill>
            </se:Fill>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#f7fbff</se:SvgParameter>
              <se:SvgParameter name="stroke-opacity">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
      
        <se:Rule>
          <se:Name>TP</se:Name>
          <se:Description>
            <se:Title>TP</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>kayttotarkoitus</ogc:PropertyName>
              <ogc:Literal>TP</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:GraphicFill>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>shape://slash</se:WellKnownName>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#FFFF6D</se:SvgParameter>
                      <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                      <se:SvgParameter name="stroke-opacity">0.5</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>5</se:Size>
                </se:Graphic>
              </se:GraphicFill>
            </se:Fill>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#f7fbff</se:SvgParameter>
              <se:SvgParameter name="stroke-opacity">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
       
        	  	  <!--Label seuranta-alueen käyttötarkoituksen tunnukselle -->
        <se:Rule>
          <se:MinScaleDenominator>30000</se:MinScaleDenominator>
          <se:MaxScaleDenominator>250000</se:MaxScaleDenominator>
          <se:TextSymbolizer>
		      <se:Geometry>
              <ogc:PropertyName>referenssipiste_geom</ogc:PropertyName> 
            </se:Geometry>
            <se:Label>
			<ogc:PropertyName>kayttotarkoitus</ogc:PropertyName>
			</se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">10</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
            <se:LabelPlacement>
              <se:PointPlacement>
                <se:AnchorPoint>
                  <se:AnchorPointX>0</se:AnchorPointX>
                  <se:AnchorPointY>0</se:AnchorPointY>
                </se:AnchorPoint>
                <se:Displacement>
  				<se:DisplacementX>8</se:DisplacementX>
  				<se:DisplacementY>-15</se:DisplacementY>
				</se:Displacement>
              </se:PointPlacement>
            </se:LabelPlacement>
            <se:Fill>
              <se:SvgParameter name="fill">#444444</se:SvgParameter>
            </se:Fill>
            <se:Priority>0</se:Priority>
            <se:VendorOption name="maxDisplacement">1</se:VendorOption>
          </se:TextSymbolizer>
        </se:Rule>
		

        	  	  <!--Label kokonaispäästösummalle -->
        <se:Rule>
          <se:MinScaleDenominator>30000</se:MinScaleDenominator>
          <se:MaxScaleDenominator>250000</se:MaxScaleDenominator>
          <se:TextSymbolizer>
		      <se:Geometry>
              <ogc:PropertyName>referenssipiste_geom</ogc:PropertyName> 
            </se:Geometry>
            <se:Label>

			<ogc:Function name="numberFormat">
            <ogc:Literal>#</ogc:Literal>
            <ogc:PropertyName xmlns="http://www.opengis.net/ogc">sum_yhteensa_tco2</ogc:PropertyName>
          </ogc:Function>
			</se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">10</se:SvgParameter>

            </se:Font>
            <se:LabelPlacement>
              <se:PointPlacement>
                <se:AnchorPoint>
                  <se:AnchorPointX>0</se:AnchorPointX>
                  <se:AnchorPointY>0.5</se:AnchorPointY>
                </se:AnchorPoint>
                <se:Displacement>
  				<se:DisplacementX>8</se:DisplacementX>
  				<se:DisplacementY>-20</se:DisplacementY>
				</se:Displacement>
              </se:PointPlacement>
            </se:LabelPlacement>
            <se:Fill>
              <se:SvgParameter name="fill">#444444</se:SvgParameter>
            </se:Fill>
            <se:Priority>0</se:Priority>
            <se:VendorOption name="maxDisplacement">1</se:VendorOption>
          </se:TextSymbolizer>
        </se:Rule>
		
      </se:FeatureTypeStyle>
	  
	  
	  
	  	  <!--Lasketaan sum_lammonsaato_tco2 neliö (sininen) -->
	<se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>Lämmönsäätö (sininen neliö)</se:Name>
          <se:Description>
            <se:Title>Lämmönsäätö</se:Title>
          </se:Description>
      
          <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Geometry>
              <ogc:PropertyName>referenssipiste_lammonsaato_geom</ogc:PropertyName> 
            </se:Geometry>
			<se:Graphic>
              <se:Mark>
                <se:WellKnownName>square</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#FAA13A</se:SvgParameter>
                  <se:SvgParameter name="fill-opacity">0.3</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#FAA13A</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">15</se:SvgParameter>
                  <se:SvgParameter name="stroke-opacity">0.9</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>
                    <ogc:PropertyName>symbolin_koko_lammonsaato</ogc:PropertyName>
              </se:Size>
            </se:Graphic>
            <se:VendorOption name="partials">true</se:VendorOption>
          </se:PointSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>

	  	  <!--Lasketaan sum_liikenne_tco2 neliö (vihreä) -->
	<se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>Liikenne (vihreä neliö)</se:Name>
          <se:Description>
            <se:Title>Liikenne</se:Title>
          </se:Description>
         
          <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Geometry>
              <ogc:PropertyName>referenssipiste_liikenne_geom</ogc:PropertyName> 
            </se:Geometry>
			<se:Graphic>
              <se:Mark>
                <se:WellKnownName>square</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#66CC00</se:SvgParameter>
                  <se:SvgParameter name="fill-opacity">0.3</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#66CC00</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">15</se:SvgParameter>
                  <se:SvgParameter name="stroke-opacity">0.9</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>
                    <ogc:PropertyName>symbolin_koko_liikenne</ogc:PropertyName>
              </se:Size>
            </se:Graphic>
            <se:VendorOption name="partials">true</se:VendorOption>
          </se:PointSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
	  
	  <!--Lasketaan sum_sahko_tco2 neliö (punainen) -->
	  	 <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>Sähko (punainen neliö)</se:Name>
          <se:Description>
            <se:Title>Sähko</se:Title>
          </se:Description>
        
          <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">  
            <se:Geometry>
              <ogc:PropertyName>referenssipiste_sahko_geom</ogc:PropertyName> 
            </se:Geometry>
			<se:Graphic>
              <se:Mark>
                <se:WellKnownName>square</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#8c2d04</se:SvgParameter>
                  <se:SvgParameter name="fill-opacity">0.3</se:SvgParameter>
                </se:Fill> 
                <se:Stroke>
                  <se:SvgParameter name="stroke">#8c2d04</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">15</se:SvgParameter>
                  <se:SvgParameter name="stroke-opacity">0.9</se:SvgParameter>  
                </se:Stroke>
              </se:Mark>
              <se:Size>
                    <ogc:PropertyName>symbolin_koko_sahko</ogc:PropertyName>
              </se:Size>
            </se:Graphic>
            <se:VendorOption name="partials">true</se:VendorOption>
          </se:PointSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
	  
	 
	  
	  	  <!--Lasketaan sum_rakentaminen_tco2 neliö (oranssi) -->
	<se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>Rakentaminen (oranssi neliö)</se:Name>
          <se:Description>
            <se:Title>Rakentaminen</se:Title>
          </se:Description>
       
          <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Geometry>
              <ogc:PropertyName>referenssipiste_rakentaminen_geom</ogc:PropertyName> 
            </se:Geometry>
			<se:Graphic>
              <se:Mark>
                <se:WellKnownName>square</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#003adb</se:SvgParameter>
                  <se:SvgParameter name="fill-opacity">0.3</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#003adb</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">15</se:SvgParameter>
                  <se:SvgParameter name="stroke-opacity">0.9</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>
                    <ogc:PropertyName>symbolin_koko_rakentaminen</ogc:PropertyName>
              </se:Size>
            </se:Graphic>
            <se:VendorOption name="partials">true</se:VendorOption>
          </se:PointSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>

    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
