<div class="app-main__outer" id="yourDivToRefresh">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>Activity Log</div>
                </div>
            </div>
        </div>

        <div class="d-flex justify-content-between align-items-center mb-3">
            <input type="search" id="myInput" class="search-input form-control" placeholder="Search">
        </div>

        <div class="col-md-19">
            <div class="main-card mb-3 card">
                <div class="card-header bg-success">Activity Log</div>
                <div class="table-responsive" style="max-height: 300px; overflow-y: auto;">
                    <table class="align-middle mb-0 table table-borderless table-striped table-hover" id="tableList">
                        <thead>
                            <tr>
                                <th class="text-left pl-4">Name</th>
                                <th class="text-left pl-4">Activity Type</th>
                                <th class="text-left pl-4">Activity Details</th>
                                <th class="text-left pl-4">Date and Time</th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            <?php
                            // Fetch data from the activity_log table with admin_users for name
                            $activityLog = $conn->query("SELECT activity_log.*, admin_users.name AS userName
                                                         FROM activity_log
                                                         LEFT JOIN admin_users ON activity_log.user_id = admin_users.id
                                                         ORDER BY activity_log.created_at DESC");

                            if ($activityLog->rowCount() > 0) {
                                while ($row = $activityLog->fetch(PDO::FETCH_ASSOC)) {
                                    ?>
                                    <tr>
                                        <td class="text-left pl-4">
                                            <?php echo !empty($row['userName']) ? $row['userName'] : 'Admin'; ?>
                                        </td>
                                        <td class="text-left pl-4"><?php echo $row['activity_type']; ?></td>
                                        <td class="text-left pl-4"><?php echo substr($row['activity_details'], 0, 50); ?></td>
                                        <td class="text-left pl-4"><?php echo date('F d, Y h:ia', strtotime($row['created_at'])); ?></td>
                                    </tr>
                                    <?php
                                }
                            } else {
                                echo '<tr><td colspan="4"><center>No Activity Logs Found</center></td></tr>';
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    // Search function
    $(document).ready(function(){
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>
