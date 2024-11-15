<style>
/* Loader styles */
.loader {
    position: fixed;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.9);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 9999;
    top: 0;
    left: 0;
}

.loader .spinner {
    border: 12px solid #f3f3f3;
    border-top: 12px solid #3498db;
    border-radius: 50%;
    width: 80px;
    height: 80px;
    animation: spin 1s linear infinite;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}

/* Hide loader when content is fully loaded */
.hidden {
    display: none;
}
</style>




<?php 
session_start();

// Check if admin or staff is not logged in
if (!(isset($_SESSION['admin']['loggedIn']) && $_SESSION['admin']['loggedIn'] === true) && 
    !(isset($_SESSION['staff']['loggedIn']) && $_SESSION['staff']['loggedIn'] === true)) {
    header("Location: index.php"); // Redirect to login page if not logged in
    exit();
}
?>




<?php include("../../db_connection.php"); ?>

<!-- ito yung header -->
<?php include("includes/header.php"); ?>

<!-- Loader -->
<!-- <div id="loader" class="loader">
    <div class="spinner"></div>
</div> -->

<div class="app-main">
<!-- sidebar dito  -->
<?php include("includes/sidebar.php"); ?> 

<?php 
   @$page = $_GET['page'];
   if($page != '') {
       if($page == "home") {
           include("pages/home.php");
       } else if($page == "staff") {
           include("pages/staff.php");
       }  else if($page == "activity") {
           include("pages/activityLogs.php");
       } else if($page == "manage-staff") {
           include("pages/manageStaff.php");
       } else if($page == "backupDatabase") {
           include("pages/backupDatabase.php");
       } else if($page == "manage-account") {
           include("pages/manage-account.php");
       } else if($page == "archive") {
           include("pages/archive.php");
       } else if($page == "election") {
           include("pages/election.php");
       } else if($page == "officials") {
           include("pages/officials.php");
       } else if($page == "voters") {
           include("pages/voters.php");
       } else if($page == "candidates") {
           include("pages/candidates.php");
       }
   } else {
       include("pages/home.php"); 
   }
?>

<!-- ito yung footer -->
<?php include("includes/footer.php"); ?>

<?php include("includes/modals.php"); ?>

<script>
    // Hide loader once the content is fully loaded
    window.addEventListener('load', function () {
        document.getElementById('loader').classList.add('hidden');
    });
</script>
