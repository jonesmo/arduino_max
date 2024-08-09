function transferData() {
    var collData = new Dict("myColl").get("myColl");
    var bufferSize = 27756; // Same size as your buffer
    var buffer = new Buffer("temps");

    buffer.clear(); // Clear the buffer first

    for (var i = 0; i < collData.length; i++) {
        var index = collData[i][0];
        var value = collData[i][1];
        buffer.replace(index, value); // Write data to buffer
    }
}

transferData();