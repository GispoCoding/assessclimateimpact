<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.1.0" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <se:Name>Suurin CO2 lahde</se:Name>
    <UserStyle>
      <se:Name>Suurin CO2 lahde</se:Name>
      <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>Lämmönsäätö</se:Name>
          <se:Description>
            <se:Title>Lämmönsäätö</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:And>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>sum_lammonsaato_tco2</ogc:PropertyName>
                  <ogc:PropertyName>sum_sahko_tco2</ogc:PropertyName>
                </ogc:PropertyIsGreaterThan>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>sum_lammonsaato_tco2</ogc:PropertyName>
                  <ogc:PropertyName>sum_liikenne_tco2</ogc:PropertyName>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>sum_lammonsaato_tco2</ogc:PropertyName>
                <ogc:PropertyName>sum_rakentaminen_tco2</ogc:PropertyName>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>square</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#ff4e00</se:SvgParameter>
                  <se:SvgParameter name="fill-opacity">0</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#4f4f4f</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">18</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>80</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>Sähkö</se:Name>
          <se:Description>
            <se:Title>Sähkö</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:And>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>sum_sahko_tco2</ogc:PropertyName>
                  <ogc:PropertyName>sum_lammonsaato_tco2</ogc:PropertyName>
                </ogc:PropertyIsGreaterThan>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>sum_sahko_tco2</ogc:PropertyName>
                  <ogc:PropertyName>sum_liikenne_tco2</ogc:PropertyName>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>sum_sahko_tco2</ogc:PropertyName>
                <ogc:PropertyName>sum_rakentaminen_tco2</ogc:PropertyName>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>triangle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#2b2b2b</se:SvgParameter>
                </se:Fill>
                <se:Stroke/>
              </se:Mark>
              <se:Size>100</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>Liikenne</se:Name>
          <se:Description>
            <se:Title>Liikenne</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:And>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>sum_liikenne_tco2</ogc:PropertyName>
                  <ogc:PropertyName>sum_lammonsaato_tco2</ogc:PropertyName>
                </ogc:PropertyIsGreaterThan>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>sum_liikenne_tco2</ogc:PropertyName>
                  <ogc:PropertyName>sum_sahko_tco2</ogc:PropertyName>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>sum_liikenne_tco2</ogc:PropertyName>
                <ogc:PropertyName>sum_rakentaminen_tco2</ogc:PropertyName>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#aa00ff</se:SvgParameter>
                  <se:SvgParameter name="fill-opacity">0</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#aa00ff</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">18</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>80</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>Rakentaminen</se:Name>
          <se:Description>
            <se:Title>Rakentaminen</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:And>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>sum_rakentaminen_tco2</ogc:PropertyName>
                  <ogc:PropertyName>sum_lammonsaato_tco2</ogc:PropertyName>
                </ogc:PropertyIsGreaterThan>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>sum_rakentaminen_tco2</ogc:PropertyName>
                  <ogc:PropertyName>sum_sahko_tco2</ogc:PropertyName>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>sum_rakentaminen_tco2</ogc:PropertyName>
                <ogc:PropertyName>sum_liikenne_tco2</ogc:PropertyName>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>diamond</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#091e10</se:SvgParameter>
                </se:Fill>
                <se:Stroke/>
              </se:Mark>
              <se:Size>80</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
