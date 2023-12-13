SerialPort.listDevices;

(
p = SerialPort(
    "/dev/cu.usbmodemDC5475C555A82",    // Arduino USB port
    baudrate: 230400,
    crtscts: true);
)

//read 14bit serial data sent from Arduino's Serial.println
(
r= Routine({
    var byte, str, res;

    99999.do{|i|
        if(p.read==14, {
            str = "";
            while({byte = p.read; byte !=13 }, {
                str= str++byte.asAscii;
            });
            res= str.asInteger;
            ("read value:"+res).postln;
        });
    };

}).play;
)

r.stop;
p.close;

/////// here's Eli Fieldsteel's way /////////
~port = SerialPort.new("/dev/cu.usbmodemDC5475C555A82", 230400);

~port.read;

(
x = [];
30.do{x = x.add(~port.read)};
x.collect(_.asAscii);
)

~port.close;