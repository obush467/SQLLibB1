CREATE XML SCHEMA COLLECTION [dbo].[AS_LANDMARK_2_250_04_04_01_01]
    AS N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified">
  <xsd:element name="Landmarks">
    <xsd:complexType>
      <xsd:complexContent>
        <xsd:restriction base="xsd:anyType">
          <xsd:sequence>
            <xsd:element name="Landmark" maxOccurs="unbounded">
              <xsd:complexType>
                <xsd:complexContent>
                  <xsd:restriction base="xsd:anyType">
                    <xsd:sequence />
                    <xsd:attribute name="LOCATION" use="required">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:minLength value="1" />
                          <xsd:maxLength value="500" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="REGIONCODE" use="required">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string" />
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="POSTALCODE">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:length value="6" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="IFNSFL">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:length value="4" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="TERRIFNSFL">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:length value="4" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="IFNSUL">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:length value="4" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="TERRIFNSUL">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:length value="4" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="OKATO">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:length value="11" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="OKTMO">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:minLength value="8" />
                          <xsd:maxLength value="11" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="UPDATEDATE" type="xsd:date" use="required" />
                    <xsd:attribute name="LANDID" use="required">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:length value="36" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="LANDGUID" use="required">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:length value="36" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="AOGUID" use="required">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:length value="36" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="STARTDATE" type="xsd:date" use="required" />
                    <xsd:attribute name="ENDDATE" type="xsd:date" use="required" />
                    <xsd:attribute name="NORMDOC">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:length value="36" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                    <xsd:attribute name="CADNUM">
                      <xsd:simpleType>
                        <xsd:restriction base="xsd:string">
                          <xsd:minLength value="1" />
                          <xsd:maxLength value="100" />
                        </xsd:restriction>
                      </xsd:simpleType>
                    </xsd:attribute>
                  </xsd:restriction>
                </xsd:complexContent>
              </xsd:complexType>
            </xsd:element>
          </xsd:sequence>
        </xsd:restriction>
      </xsd:complexContent>
    </xsd:complexType>
  </xsd:element>
</xsd:schema>';

