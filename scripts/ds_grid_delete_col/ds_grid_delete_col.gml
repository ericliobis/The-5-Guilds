//ds_grid_delete_row(grid index, row)
//Deletes the row in the given grid and resizes the grid appropriately
//WILL NOT WORK IF THERE IS ONLY 1 ROW IN YOUR GRID.  Thanks for the stupid change, Yoyo.
var grid = argument[0];
var col = argument[1];
var grid_width=ds_grid_width(grid);
var grid_height=ds_grid_height(grid);
ds_grid_set_grid_region(grid, grid, col+1, 0, grid_width-1, grid_height-1, col,0);
ds_grid_resize(grid,grid_width-1,grid_height);