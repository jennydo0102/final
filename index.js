// Required modules 
const express = require("express");
const app = express();
const dblib = require("./dblib.js");

// Add middleware to parse default urlencoded form
app.use(express.urlencoded({ extended: false }));

// Setup EJS
app.set("view engine", "ejs");


// Application folders
app.use(express.static("public"));

// Enable CORS (see https://enable-cors.org/server_expressjs.html)
app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header(
        "Access-Control-Allow-Headers",
        "Origin, X-Requested-With, Content-Type, Accept"
    );
    next();
});

// Start listener
app.listen(process.env.PORT || 3000, () => {
    console.log("Server started (http://localhost:3000/) !");
});

// Setup routes
app.get("/", (req, res) => {
    res.render("index");
});

app.get("/table", (req, res) => {
    const sql = "SELECT * FROM evehicle ORDER BY vid"
    pool.query(sql, [], (err, result) => {
        if (err) {
            return console.error(err.message);
        }
        res.render("table", { model: result.rows });
    });
});

/// Add dblib packages
dblib.getTotalRecords()
    .then(result => {
        if (result.msg.substring(0, 5) === "Error") {
            console.log(`Error Encountered.  ${result.msg}`);
        } else {
            console.log(`Total number of database records: ${result.totRecords}`);
        };
    })
    .catch(err => {
        console.log(`Error: ${err.message}`);
    });

// Import view
app.get("/input", async (req, res) => {
    const totRecs = await dblib.getTotalRecords();
    res.render("input", {
        type: "get",
        totRecs: totRecs.totRecords
    });
});

app.post("/input", upload.single('filename'), async (req, res) => {
    const totRecs = await dblib.getTotalRecords();
    if (!req.file || Object.keys(req.file).length === 0) {
        message = "Error: Import file not uploaded";
        return res.send(message);
    };
    //Read file line by line, inserting records
    const buffer = req.file.buffer;
    const lines = buffer.toString().split(/\r?\n/);

    lines.forEach(line => {
        //console.log(line);
        customer = line.split(",");
        //console.log(product);
        const sql = "INSERT INTO evehicle (vid, vin, city, postal_code, model_year, make, model, ev_type, electric_range, base_msrp, purchase_date) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)";
        pool.query(sql, evehicle, (err, result) => {
            if (err) {
                console.log(`Insert Error.  Error message: ${err.message}`);
            } else {
                console.log(`Inserted successfully`);
            }
        });
    });
    message = `Processing Complete - Processed ${lines.length} records`;
    res.send(message);
});

//Sum view
app.get("/sum", (req, res) => {
    res.render("sum");
});

app.post('/sum', (req, res) => {
    const startNumber = parseInt(req.body.startNumber);
    const endNumber = parseInt(req.body.endNumber);
    const divisibleBy = parseInt(req.body.divisibleBy);

    if (startNumber >= endNumber) {
        res.render('sum', { error: 'Starting number must be less than the ending number' });
        return;
    }

    let sum = 0;
    for (let i = startNumber; i <= endNumber; i++) {
        if (i % divisibleBy === 0) {
            sum += i;
        }
    }

    res.render('sum', { sum: sum });
});
