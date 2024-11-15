<link rel="stylesheet" type="text/css" href="css/mycss.css">
<div class="app-main__outer" id="yourDivToRefresh">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>Manage Staff</div>
                </div>
            </div>
        </div>

        <div class="d-flex justify-content-between align-items-center mb-3">
            <button class="btn btn-info btn-sm" data-toggle="modal" data-target="#modalForAddStaff">
                <span class="mr-1" role="img" aria-label="plus-sign">➕</span> Add Staff
            </button>
        </div>

        <div class="col-md-19">
            <div class="main-card mb-3 card">
                <div class="card-header bg-success">Staff List</div>
                <div class="table-responsive">
                    <?php
                    // include("../../../conn.php");

                    // Fetch data from the staff table
                    $selStaff = $conn->query("SELECT * FROM admin_users WHERE status = 0 AND role = 'staff' ");
                    if ($selStaff->rowCount() > 0) {
                        ?>
                        <table class="align-middle mb-0 table table-borderless table-striped table-hover" id="tableList">
                            <thead>
                                <tr>
                                    <th class="text-left pl-4">Name</th>
                                    <th class="text-left pl-4">Image</th>
                                    <th class="text-left pl-4">Email</th>
                                    <th class="text-left pl-4">Password</th>
                                    <th class="text-left pl-4">Date Created</th>
                                    <th class="text-center" width="20%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                while ($selStaffRow = $selStaff->fetch(PDO::FETCH_ASSOC)) {
                                    $imagePath = "../../" . $selStaffRow['image'];
                                ?>
                                <tr>
                                    <td class="text-left pl-4"><?php echo $selStaffRow['name']; ?></td>
                                    <td class="text-left pl-4">
                                        <?php
                                        if (file_exists($imagePath)) {
                                            echo "<img src=\"$imagePath\" width=\"50\" height=\"50\">";
                                        } else {
                                            echo "Image not found";
                                        }
                                        ?>
                                    </td>
                                    <td class="text-left pl-4"><?php echo $selStaffRow['email']; ?></td>
                                    <td class="text-left pl-4"><?php echo $selStaffRow['password']; ?></td>
                                    <td class="text-left pl-4 small"><?php echo date('F d, Y h:ia', strtotime($selStaffRow['created_at'])); ?></td>
                                    <td class="text-center">
                                        <a href="home.php?page=manage-staff&id=<?php echo $selStaffRow['id']; ?>" type="button" class="btn btn-primary btn-sm">Update</a>
                                        <button type="button" class="btn btn-danger btn-sm delete-staff" id="deleteStaff" data-id="<?php echo $selStaffRow['id']; ?>">Delete</button> <!-- Add class and data-id attribute -->
                                    </td>
                                </tr>
                                <?php
                                }
                                ?>
                            </tbody>
                        </table>
                    <?php
                    } else {
                        echo '<p><h5><center>No Saved Staff Found</center></h5></p>';
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>



<script>
    document.addEventListener('DOMContentLoaded', function() {
        const deleteButtons = document.querySelectorAll('.delete-staff');

        deleteButtons.forEach(function(button) {
            button.addEventListener('click', function() {
                const row = this.closest('tr');
                const staffId = this.getAttribute('data-id'); // Get the staff ID from data-id attribute

                // Send AJAX request to delete the staff
                $.ajax({
                    url: 'query/delete.php',
                    type: 'POST',
                    data: { entry_id: staffId, type: 'staff' },
                    success: function(response) {
                        console.log('Response:', response); // Log response for debugging
                        if (response.trim() === 'success') {
                            row.remove(); // Remove row from staff
                        } else {
                            alert('Failed to delete staff. Please try again.'); // Show error message
                        }
                    },
                    error: function() {
                        alert('Error occurred. Could not delete staff.'); // Show error message
                    }
                });
            });
        });
    });
</script>


