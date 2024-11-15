
<?php 
  error_reporting(E_ALL);
include("../../../conn.php");

$id = $_GET['id'];
$selCat = $conn->query("SELECT * FROM categories WHERE cat_id='$id' ")->fetch(PDO::FETCH_ASSOC);
?>

<fieldset style="width:543px;" >
	<legend><i class="facebox-header"><i class="edit large icon"></i>&nbsp;Update Category Name ( <?php echo strtoupper($selCat['cat_name']); ?> )</i></legend>
  <div class="col-md-12 mt-4">
<form method="post" id="updateCategoryFrm">
     <div class="form-group">
      <legend>Category Name</legend>
    <input type="hidden" name="cat_id" value="<?php echo $id; ?>">
    <input type="" name="newCategoryName" class="form-control" required="" value="<?php echo $selCat['cat_name']; ?>" >
  </div>
  <div class="form-group" align="right">
    <button type="submit" class="btn btn-sm btn-primary">Update Now</button>
  </div>
</form>
  </div>
</fieldset>







