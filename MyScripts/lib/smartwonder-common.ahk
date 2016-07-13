; SmartWonder specific functions

FindTabByName(tabListTable, tabName) {
  If (tabName = "") {
    Return 0
  }

  Loop % tabListTable.children[0].children.Length {
    currRow := A_Index - 1
    tabList := tabListTable.children[0].children[currRow]
    Loop % tabList.children.Length {
      currItem := A_Index - 1
      If (tabList.children[currItem].innerText = tabName) {
        Return tabList.children[currItem]
      }
    }
  }

  Return 0
}
