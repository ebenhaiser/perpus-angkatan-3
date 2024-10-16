let addRow = document.getElementById("add-row");
addRow.addEventListener("click", function () {
  let tableAddBorrowing = document
    .getElementById("table-add-borrowing")
    .getElementsByTagName("tbody")[0];
  let newRow = tableAddBorrowing.insertRow(tableAddBorrowing.rows.length);

  let judulBukuCell = newRow.insertCell(0);
  let settingsCell = newRow.insertCell(1);

  judulBukuCell.innerHTML = "tess";
  settingsCell.innerHTML =
    "<button onclick='deleteRow()' class='btn btn-sm btn-danger'>hapus</button>";

  function deleteRow() {}
});
