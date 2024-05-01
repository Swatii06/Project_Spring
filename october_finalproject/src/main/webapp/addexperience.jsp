<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Experience</title>
    <style type="text/css">
     body {
    height: 100vh; 
    background: linear-gradient(to top, #9933ff 0%, #669999 100%);
}
     form {
      max-width: 1000px;
      margin: 20px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px purple;
    }
    button {
      background-color: purple;
      color: #fff;
      padding: 10px 15px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
     margin-left: 480px;
     width:90px;
    }
    table {
      border-collapse: collapse;
      width: 100%;
    }

    th, td {
      border: 2px solid #dddddd;
      padding: 8px;
      text-align: left;
    }

    th {
      background-color: #f2f2f2;
    }
    a{
    text-decoration: none;
   
    }
    </style>
    <script>
        function addRow() {
            var table = document.getElementById("experienceTable");
            var newRow = table.insertRow(table.rows.length);

            var cell1 = newRow.insertCell(0);
            var cell2 = newRow.insertCell(1);
            var cell3 = newRow.insertCell(2);
            var cell4 = newRow.insertCell(3);
            

            cell1.innerHTML = '<input type="text" name="companyname[]">';
            cell2.innerHTML = '<input type="text" name="role[]">';
            cell3.innerHTML = '<input type="date" name="startdate[]">';
            cell4.innerHTML = '<input type="date" name="enddate[]">';
        }

        function registerAll() {
            var tableData = [];
            var table = document.getElementById("experienceTable");

            for (var i = 1; i < table.rows.length; i++) {
                var row = table.rows[i];
                var rowData = {
                    companyname: row.cells[0].querySelector('input').value,
                    role: row.cells[1].querySelector('input').value,
                    startdate: row.cells[2].querySelector('input').value,
                    enddate: row.cells[3].querySelector('input').value
                };

                tableData.push(rowData);
            }

            fetch('add1', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(tableData)
            })
            .then(response => response.json())
            .then(data => {
                window.location.href='/fetch';
            })
            .catch(error => {
                console.error('Error:', error);
            });
            
        }
    </script>
</head>
<body>
    <form action="javascript:void(0);" onsubmit="registerAll()">
        <table id="experienceTable">
            <tr>
                <th>Company Name</th>
                <th>Role</th>
                <th>Joining Date</th>
                <th>Last Date</th>
            </tr>
            <tr>
                <td><input type="text" name="companyname[]"></td>
                <td><input type="text" name="role[]"></td>
                <td><input type="date" name="startdate[]"></td>
                <td><input type="date" name="enddate[]"></td>
            </tr>
        </table>
        <br>
        <button type="button" onclick="addRow()">Add Row</button>
        <br><br>
        <button type="submit">Register All</button>
    </form>
</body>
</html>