package ru.schedule.lab2.gui.search.model;

import javax.swing.*;
import javax.swing.table.TableModel;

public class rowFilter extends RowFilter
{
    private String text;
    private int columnIndex;
    private TableModel tableModel;

    public rowFilter(String text, int columnIndex, TableModel tableModel)
    {
        this.text = text;
        this.columnIndex = columnIndex;
        this.tableModel = tableModel;
    }

    @Override
    public boolean include(Entry entry)
    {
        return
                columnIndex <= 0 || columnIndex > tableModel.getColumnCount() ?
                        true : entry.getStringValue(columnIndex).indexOf(text) >= 0;
    }
}
