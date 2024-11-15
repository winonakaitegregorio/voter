<style>
    .search-input {
        width: 150px; /* Adjust the width as needed */
        height: 32px;
    }
</style>


<link rel="stylesheet" type="text/css" href="css/mycss.css">
<div class="app-main__outer" id="yourDivToRefresh">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>Manage Candidates</div>
                </div>
            </div>
        </div>

        <div class="d-flex justify-content-between align-items-center mb-3">
            <input type="search" id="voterSearchInput" class="search-input form-control" placeholder="Search">


            <button class="btn btn-info btn-sm" data-toggle="modal" data-target="#modalForAddCandidate">
                <span class="mr-1" role="img" aria-label="plus-sign">➕</span> Add Candidate
            </button>
        </div>

        <div class="col-md-19">
            <div class="main-card mb-3 card">
                <div class="card-header bg-success">Candidate List</div>
                <div class="table-responsive">
                    <?php
                    // Fetch data from the candidates table
                    $selCandidates = $conn->query("SELECT * FROM candidates WHERE status = 0");
                    if ($selCandidates->rowCount() > 0) {
                    ?>
                        <table class="align-middle mb-0 table table-borderless table-striped table-hover" id="tableList">
                            <thead>
                                <tr>
                                    <th class="text-left pl-4">Name</th>
                                    <th class="text-left pl-4">Position</th>
                                    <th class="text-left pl-4">Age</th>
                                    <th class="text-left pl-4">Sex</th>
                                    <th class="text-left pl-4">Platform</th>
                                    <th class="text-left pl-4">Party List</th>
                                    <th class="text-left pl-4">Image</th>
                                    <th class="text-center" width="20%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                while ($candidateRow = $selCandidates->fetch(PDO::FETCH_ASSOC)) {
                                    $imagePath = "../../" . $candidateRow['image']; // Adjust to your image column name
                                ?>
                                <tr>
                                    <td class="text-left pl-4"><?php echo htmlspecialchars($candidateRow['name']); ?></td>
                                    <td class="text-left pl-4"><?php echo htmlspecialchars($candidateRow['position']); ?></td>
                                    <td class="text-left pl-4"><?php echo htmlspecialchars($candidateRow['age']); ?></td>
                                    <td class="text-left pl-4"><?php echo htmlspecialchars($candidateRow['sex']); ?></td>
                                    <td class="text-left pl-4"><?php echo htmlspecialchars($candidateRow['platform']); ?></td>
                                    <td class="text-left pl-4"><?php echo htmlspecialchars($candidateRow['party_list']); ?></td>
                                    <td class="text-left pl-4">
                                        <?php
                                        if (file_exists($imagePath)) {
                                            echo "<img src=\"$imagePath\" width=\"50\" height=\"50\">";
                                        } else {
                                            echo "Image not found";
                                        }
                                        ?>
                                    </td>
                                    <td class="text-center">
                                        <a href="home.php?page=manage-candidate&id=<?php echo $candidateRow['id']; ?>" type="button" class="btn btn-primary btn-sm">Update</a>
                                        <button type="button" class="btn btn-danger btn-sm delete-candidate" data-id="<?php echo $candidateRow['id']; ?>">Delete</button>
                                    </td>
                                </tr>
                                <?php
                                }
                                ?>
                            </tbody>
                        </table>
                    <?php
                    } else {
                        echo '<p><h5><center>No Candidates Found</center></h5></p>';
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const deleteButtons = document.querySelectorAll('.delete-candidate');

        deleteButtons.forEach(function(button) {
            button.addEventListener('click', function() {
                const row = this.closest('tr');
                const candidateId = this.getAttribute('data-id'); // Get candidate ID from data-id attribute

                // Send AJAX request to delete the candidate
                $.ajax({
                    url: 'query/delete.php',
                    type: 'POST',
                    data: { entry_id: candidateId, type: 'candidate' },
                    success: function(response) {
                        console.log('Response:', response); // Log response for debugging
                        if (response.trim() === 'success') {
                            row.remove(); // Remove row from candidates
                        } else {
                            alert('Failed to delete candidate. Please try again.'); // Show error message
                        }
                    },
                    error: function() {
                        alert('Error occurred. Could not delete candidate.'); // Show error message
                    }
                });
            });
        });
    });
</script>
