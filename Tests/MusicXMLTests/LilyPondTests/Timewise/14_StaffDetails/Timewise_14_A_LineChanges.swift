//
//  Timewise_14_A_LineChanges.swift
//  MusicXMLTests
//
//  Created by James Bean on 8/8/19.
//

extension Timewise_14_StaffDetails {
    var A_LineChanges: String {
        """
        <?xml version="1.0" encoding="UTF-8" standalone="no"?>
        <!DOCTYPE score-timewise
          PUBLIC "-//Recordare//DTD MusicXML 2.0 Timewise//EN" "http://www.musicxml.org/dtds/timewise.dtd">
        <score-timewise>
           <identification>
              <miscellaneous>
                 <miscellaneous-field name="description">The number of staff lines can be
              modified by using the staff-lines child of the staff-details attribute.
              This can happen globally (the first staff has one line globally) or
              during the part at the beginning of a measure and even inside a measure
              (the second part has 5 lines initially, 4 at the beginning of the
              second measure, and 3 starting in the middle of the third
              measure).</miscellaneous-field>
              </miscellaneous>
          </identification>
           <part-list>
              <part-group number="1" type="start">
                 <group-symbol>bracket</group-symbol>
                 <group-barline>yes</group-barline>
              </part-group>
              <score-part id="P1">
                 <part-name>Part 1</part-name>
              </score-part>
              <score-part id="P2">
                 <part-name>Part 2</part-name>
              </score-part>
              <part-group number="1" type="stop"/>
          </part-list>
           <measure number="1">
              <part id="P1">
                 <attributes>
                    <divisions>1</divisions>
                    <key>
                       <fifths>0</fifths>
                       <mode>major</mode>
                    </key>
                    <staff-details>
                       <staff-lines>1</staff-lines>
                    </staff-details>
                 </attributes>
                 <note>
                    <pitch>
                       <step>D</step>
                       <octave>5</octave>
                    </pitch>
                    <duration>4</duration>
                    <voice>1</voice>
                    <type>whole</type>
                 </note>
              </part>
              <part id="P2">
                 <attributes>
                    <divisions>1</divisions>
                    <key>
                       <fifths>0</fifths>
                       <mode>major</mode>
                    </key>
                    <staff-details>
                       <staff-lines>5</staff-lines>
                    </staff-details>
                 </attributes>
                 <note>
                    <pitch>
                       <step>G</step>
                       <octave>4</octave>
                    </pitch>
                    <duration>4</duration>
                    <voice>1</voice>
                    <type>whole</type>
                 </note>
              </part>
           </measure>
           <measure number="2">
              <part id="P1">
                 <note>
                    <pitch>
                       <step>D</step>
                       <octave>5</octave>
                    </pitch>
                    <duration>4</duration>
                    <voice>1</voice>
                    <type>whole</type>
                 </note>
              </part>
              <part id="P2">
                 <attributes>
                    <staff-details>
                       <staff-lines>4</staff-lines>
                    </staff-details>
                 </attributes>
                 <note>
                    <pitch>
                       <step>G</step>
                       <octave>4</octave>
                    </pitch>
                    <duration>2</duration>
                    <voice>1</voice>
                    <type>half</type>
                 </note>
                 <note>
                    <pitch>
                       <step>G</step>
                       <octave>4</octave>
                    </pitch>
                    <duration>2</duration>
                    <voice>1</voice>
                    <type>half</type>
                 </note>
              </part>
           </measure>
           <measure number="3">
              <part id="P1">
                 <note>
                    <pitch>
                       <step>D</step>
                       <octave>5</octave>
                    </pitch>
                    <duration>4</duration>
                    <voice>1</voice>
                    <type>whole</type>
                 </note>
              </part>
              <part id="P2">
                 <note>
                    <pitch>
                       <step>G</step>
                       <octave>4</octave>
                    </pitch>
                    <duration>2</duration>
                    <voice>1</voice>
                    <type>half</type>
                 </note>
                 <attributes>
                    <staff-details>
                       <staff-lines>2</staff-lines>
                    </staff-details>
                 </attributes>
                 <note>
                    <pitch>
                       <step>G</step>
                       <octave>4</octave>
                    </pitch>
                    <duration>2</duration>
                    <voice>1</voice>
                    <type>half</type>
                 </note>
              </part>
           </measure>
        </score-timewise>
        """
    }
}
