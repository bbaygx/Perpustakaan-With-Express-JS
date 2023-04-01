const express = require("express");
const mysql = require("mysql");
const path = require('path')
const BodyParser = require("body-parser")
const app = express();

app.use(BodyParser.urlencoded({ extended: true }))

app.set("view engine", "ejs")
app.set("views", "views")
app.use(express.static(path.join(__dirname, 'public')));

const connection = mysql.createConnection({
    host: "localhost",
    database: "perpustakaan",
    user: "root",
    password: ""
})



connection.connect((err) => {
    if (err) throw err
    console.log("database connected")

    
    // GET DATA
    app.get("/", (req, res) => {
        const sql = "SELECT * FROM buku";
        connection.query(sql, (err, result) => {
            const resultParse = JSON.parse(JSON.stringify(result))
            console.log('Hasil database ->', resultParse)
            
            res.render("index", { resultParse: resultParse, title: "Yatogami Tohka" })
        })
    })

    // INSERT DATA
    app.post("/tambah", (req, res) => {
        const insertSQL = `INSERT INTO buku (id, name_books, kepengarangan, penerbit, isbn) VALUES (NULL, '${req.body.name_books}', '${req.body.kepengarangan}', '${req.body.penerbit}', '${req.body.isbn}')`

        connection.query(insertSQL, (err, result) => {
            if (err) throw err
            res.redirect("/");
        })
    })

    
    // UPDATE DATA
app.get("/edit/:id", (req, res) => {
    const id = req.params.id;
    const sql = `SELECT * FROM buku WHERE id = ${id}`;
    connection.query(sql, (err, result) => {
      if (err) throw err;
      const resultParse = JSON.parse(JSON.stringify(result));
      console.log('Hasil database ->', resultParse);
      res.render("edit", { resultParse: resultParse[0], title: "Edit Data Buku" });
    });
  });
  
  app.put("/update/:id", (req, res) => {
    const id = req.params.id;
    const updateSQL = `UPDATE buku SET name_books = '${req.body.name_books}', kepengarangan = '${req.body.kepengarangan}', penerbit = '${req.body.penerbit}', isbn = '${req.body.isbn}' WHERE id = ${id}`;
    connection.query(updateSQL, (err, result) => {
      if (err) throw err;
      res.redirect("/");
    });
  });
  
  // DELETE DATA
  app.delete("/hapus/:id", (req, res) => {
    const id = req.params.id;
    const deleteSQL = `DELETE FROM buku WHERE id = ${id}`;
    connection.query(deleteSQL, (err, result) => {
      if (err) throw err;
      res.redirect("/");
    });
  });


})



app.listen(5000, () => {
    console.log("server ready...")
})