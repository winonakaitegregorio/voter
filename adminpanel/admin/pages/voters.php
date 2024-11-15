<style>
    .search-input {
        width: 150px; /* Adjust the width as needed */
        height: 32px;
    }
</style>

<div class="app-main__outer" id="voterDivToRefresh">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>Manage Voters</div>
                </div>
            </div>
        </div>





        <div class="d-flex justify-content-between align-items-center mb-3">
            <input type="search" id="voterSearchInput" class="search-input form-control" placeholder="Search">

             <button class="btn btn-info btn-sm" data-toggle="modal" data-target="#modalForAddVoter">
                <span class="mr-1" role="img" aria-label="plus-sign">➕</span> Add Voter
            </button>
        </div>

        <div class="col-md-19">
            <div class="main-card mb-3 card">
                <div class="card-header bg-success">Voter List</div>
                <div class="table-responsive" style="max-height: 300px; overflow-y: auto;">
                    <?php
                    // Fetch data from the voters table with status = 0
                    $selVoters = $conn->query("SELECT * FROM voters WHERE status = 0");
                    if ($selVoters->rowCount() > 0) {
                    ?>
                        <table class="align-middle mb-0 table table-borderless table-striped table-hover" id="tableList">
                            <thead>
                                <tr>
                                    <th class="text-left pl-4">Voter ID</th>
                                    <th class="text-left pl-4">Name</th>
                                    <th class="text-left pl-4">Image</th>
                                    <th class="text-left pl-4">Address</th>
                                    <th class="text-left pl-4">Date Registered</th>
                                    <th class="text-center" width="20%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                while ($voterRow = $selVoters->fetch(PDO::FETCH_ASSOC)) {
                                    $imagePath = "../../" . $voterRow['voter_image']; // Update to match your column for image paths
                                ?>
                                <tr>
                                    <td class="text-left pl-4"><?php echo htmlspecialchars($voterRow['voter_id']); ?></td>
                                    <td class="text-left pl-4"><?php echo htmlspecialchars($voterRow['name']); ?></td>
                                    <td class="text-left pl-4">
                                        <?php
                                        if (file_exists($imagePath)) {
                                            echo "<img src=\"$imagePath\" width=\"50\" height=\"50\">";
                                        } else {
                                            echo "Image not found";
                                        }
                                        ?>
                                    </td>
                                    <td class="text-left pl-4"><?php echo htmlspecialchars($voterRow['address']); ?></td>
                                    <td class="text-left pl-4"><?php echo date('F d, Y h:ia', strtotime($voterRow['created_at'])); ?></td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-danger btn-sm banned-btn" data-id="<?php echo $voterRow['voter_id']; ?>">Banned</button>
                                        <button type="button" class="btn btn-success btn-sm unbanned-btn" style="display: none;" data-id="<?php echo $voterRow['voter_id']; ?>">Unbanned</button>
                                    </td>
                                </tr>
                                <?php
                                }
                                ?>
                            </tbody>
                        </table>
                    <?php
                    } else {
                        echo '<p><h5><center>No Voters Found</center></h5></p>';
                    }
                    ?>
                </div>
            </div>
        </div>




    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
$(document).ready(function() {
    // Search functionality
    $("#voterSearchInput").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#voterTableBody tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });

    // Banned/Unbanned toggle functionality
    $('.banned-btn').click(function() {
        var voterId = $(this).data('id');
        updateVoterStatus(voterId, 1);

        $(this).hide();
        $(this).siblings('.unbanned-btn').show();
        localStorage.setItem('voterStatus_' + voterId, 'banned');
    });

    $('.unbanned-btn').click(function() {
        var voterId = $(this).data('id');
        updateVoterStatus(voterId, 0);

        $(this).hide();
        $(this).siblings('.banned-btn').show();
        localStorage.setItem('voterStatus_' + voterId, 'unbanned');
    });

    // Check local storage for each voter ID
    $('.banned-btn, .unbanned-btn').each(function() {
        var voterId = $(this).data('id');
        var status = localStorage.getItem('voterStatus_' + voterId);
        if (status === 'banned' && $(this).hasClass('banned-btn')) {
            $(this).hide();
            $(this).siblings('.unbanned-btn').show();
        } else if (status === 'unbanned' && $(this).hasClass('unbanned-btn')) {
            $(this).hide();
            $(this).siblings('.banned-btn').show();
        }
    });

    // AJAX function to update the voter status
    function updateVoterStatus(voterId, status) {
        $.ajax({
            url: 'query/updateVoterStatus.php', // PHP script to update voter status
            type: 'POST',
            data: { voter_id: voterId, status: status },
            success: function(response) {
                console.log(response);
            },
            error: function(xhr, status, error) {
                console.error(xhr.responseText);
            }
        });
    }
});
</script>
