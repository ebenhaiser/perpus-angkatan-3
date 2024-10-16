let addRow = document.getElementById("add-row");
addRow.addEventListener("click", function () {
  let tableAddBorrowing = document
    .getElementById("table-add-borrowing")
    .getElementsByTagName("tbody")[0];
  let newRow = tableAddBorrowing.insertRow(tableAddBorrowing.rows.length);

  let bookTitleCell = newRow.insertCell(0);
  let settingsCell = newRow.insertCell(1);
  let bookTitle = document.getElementById("id-book");
  bookTitle = bookTitle.options[bookTitle.selectedIndex].text;

  bookTitleCell.innerHTML = bookTitle;
  settingsCell.innerHTML =
    "<button type='button' onclick='deleteRow(this)' class='btn btn-sm btn-danger'>Hapus</button>";
});

function deleteRow(button) {
  let row = button.parentNode.parentNode;
  row.parentNode.removeChild(row);
}
