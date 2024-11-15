<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/mycss.css">
<div class="app-main__outer" id="yourDivToRefresh">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>Backup Database <i class="fas fa-database"></i></div>
                </div>
            </div>
        </div>

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-5 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Backup Database</h5>
                            <p class="card-text">Click the button below to back up the database.</p>
                            <button type="button" class="btn btn-primary btn-block" id="backupButton">
                                <i class="fas fa-download mr-2"></i> Backup
                            </button>
                        </div>
                    </div>
                </div>

                <div class="col-md-5 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Restore Database</h5>
                            <p class="card-text">Click the button below to restore the database.</p>
                            <button type="button" class="btn btn-success btn-block" id="restoreButton">
                                <i class="fas fa-upload mr-2"></i> Restore
                            </button>
                            <div id="loadingIcon" class="text-center mt-3" style="display: none;">
                                <div class="spinner-border text-primary" role="status">
                                    <span class="sr-only">Please wait...</span>
                                </div>
                                <p class="mt-2">On process, please wait...</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




<script>
// Backup Database Button Click Event
$('#backupButton').on('click', function() {
    $.ajax({
        type: "POST",
        url: "query/backupDbExe.php",
        success: function(response) {
            response = JSON.parse(response); // Parse JSON response
            if (response.res === "success") {
                Swal.fire({
                    icon: 'success',
                    title: 'Successfully Database Backup',
                    showConfirmButton: false,
                    timer: 1500
                });
            } else {
                Swal.fire({
                    icon: 'error',
                    title: 'Backup Not Successful',
                    text: response.error || 'Database backup failed!'
                });
            }
        },
        error: function() {
            Swal.fire({
                icon: 'error',
                title: 'Backup Not Successful',
                text: 'Database backup failed!'
            });
        }
    });
});




    // Restore Database Button Click Event
    $('#restoreButton').on('click', function() {
        // Hide restore button and show loading spinner
        $('#restoreButton').hide();
        $('#loadingIcon').show();

        $.ajax({
            type: "POST",
            url: "query/restoreDbExe.php",
            success: function(response) {
                try {
                    response = JSON.parse(response); // Parse JSON response
                    if (response.res === "success") {
                        Swal.fire({
                            icon: 'success',
                            title: 'Database Restore Successful',
                            showConfirmButton: false,
                            timer: 1500
                        });
                        // setTimeout(function() {
                        //     location.reload();
                        // }, 1500);
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Restore Not Successful',
                            text: 'Database restore failed! ' + response.error
                        });
                    }
                } catch (error) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Restore Not Successful',
                        text: 'Database restore failed!'
                    });
                } finally {
                    // Show restore button and hide loading spinner
                    $('#restoreButton').show();
                    $('#loadingIcon').hide();
                }
            },
            error: function() {
                Swal.fire({
                    icon: 'error',
                    title: 'Restore Not Successful',
                    text: 'Database restore failed!'
                }).finally(function() {
                    // Show restore button and hide loading spinner
                    $('#restoreButton').show();
                    $('#loadingIcon').hide();
                });
            }
        });
    });


    $(document).ready(function() {
        $('#systemButton').on('click', function() {
            // Hide the button and show the spinner
            $(this).hide();
            $('#loadingIconSystem').show();

            // Simulate download process (replace this with your actual AJAX call)
            setTimeout(function() {
                // Show the button and hide the spinner after 3 seconds (simulating download completion)
                $('#systemButton').show();
                $('#loadingIconSystem').hide();
            }, 3000);
        });
    });


</script>
