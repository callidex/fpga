<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="A" />
        <signal name="B" />
        <signal name="SEL" />
        <signal name="XLXN_11" />
        <signal name="Q" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="SEL" />
        <port polarity="Output" name="Q" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="SEL" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="XLXN_11" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="960" y="1056" name="XLXI_1" orien="R0" />
        <instance x="1200" y="1824" name="XLXI_5" orien="R0" />
        <instance x="448" y="1920" name="XLXI_4" orien="R0" />
        <instance x="1680" y="1520" name="XLXI_2" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1552" y1="1792" y2="1792" x1="1424" />
            <wire x2="1552" y1="1456" y2="1792" x1="1552" />
            <wire x2="1680" y1="1456" y2="1456" x1="1552" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1552" y1="960" y2="960" x1="1216" />
            <wire x2="1552" y1="960" y2="1120" x1="1552" />
        </branch>
        <branch name="A">
            <wire x2="960" y1="928" y2="928" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="928" name="A" orien="R180" />
        <branch name="B">
            <wire x2="1680" y1="1392" y2="1392" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1392" name="B" orien="R180" />
        <branch name="SEL">
            <wire x2="448" y1="1888" y2="1888" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="1888" name="SEL" orien="R180" />
        <branch name="XLXN_11">
            <wire x2="928" y1="1888" y2="1888" x1="672" />
            <wire x2="928" y1="1792" y2="1888" x1="928" />
            <wire x2="944" y1="1792" y2="1792" x1="928" />
            <wire x2="1200" y1="1792" y2="1792" x1="944" />
            <wire x2="960" y1="992" y2="992" x1="944" />
            <wire x2="944" y1="992" y2="1792" x1="944" />
        </branch>
        <branch name="Q">
            <wire x2="1856" y1="1152" y2="1152" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1152" name="Q" orien="R0" />
        <instance x="1552" y="1248" name="XLXI_3" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1552" y1="1184" y2="1184" x1="1472" />
            <wire x2="1472" y1="1184" y2="1280" x1="1472" />
            <wire x2="1952" y1="1280" y2="1280" x1="1472" />
            <wire x2="1952" y1="1280" y2="1424" x1="1952" />
            <wire x2="1952" y1="1424" y2="1424" x1="1936" />
        </branch>
    </sheet>
</drawing>