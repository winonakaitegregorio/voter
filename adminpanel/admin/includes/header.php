<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bevms | Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
     
    <!-- MAIN CSS -->
    <link href="./main.css" rel="stylesheet">
    <link href="css/sweetalert.css" rel="stylesheet">
    <link href="css/facebox.css" rel="stylesheet">
    <link rel="icon" type="text/css" href="image/logo.png"> 
</head>

<style>
    @media print {
        .header {
            display: none;
        }
    }
</style>
 
<body id="body">
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header ">
        <div class="app-header header-shadow header">
            <div class="app-header__logo ">
                <div> 
                    <img class="logo-src" style="height:50px; width:50px; margin-left: 150%;" src="image/logo.png">
                </div>
                <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            
            <!-- this is for mobile menu -->
            <div class="app-header__mobile-menu">
                <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </div>

            <div class="app-header__menu">
                <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span>
            </div>
            <div class="app-header__content">
                <div class="app-header-left">
                   <h2 style="font-family: 'Roboto Condensed', sans-serif; font-size: 28px; font-weight: bold; color: #006400;">BARANGAY</h2>
                </div>
                   
                <div class="app-header-right">
                    <ul class="header-menu nav">
                        <li class="nav-item">
                            <a href="home.php" class="nav-link" title="home">
                                <i class="nav-link-icon fa fa-home"> </i>
                                Home
                            </a>
                        </li>
                        <!-- <li class="dropdown nav-item" title="see content">
                            <a href="./../../home.php" class="nav-link">
                                <i class="nav-link-icon fa fa-eye"></i>
                                View
                            </a>
                        </li> -->
<!--                         <li class="btn-group nav-item" title="view messages">
                            <a href="#" class="nav-link" data-toggle="modal" data-target="#messageModal">
                                <i class="nav-link-icon fa fa-comments"></i>
                                Feedbacks
                                <span id="messageBadge" class="badge badge-pill badge-danger" style="display: none;"></span>
                            </a>
                        </li> -->
                        <?php
                        // Fetch all notifications
                        $selNotifications = $conn->prepare("SELECT * FROM notifications WHERE status = '0' ORDER BY created_at DESC");
                        $selNotifications->execute();
                        $notifications = $selNotifications->fetchAll(PDO::FETCH_ASSOC);
                        ?>

                        <li class="dropdown nav-item" title="see content">
                            <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="nav-link-icon fa fa-bell"></i> Notification
                                <span class="badge badge-pill badge-danger" id="notificationBadge"><?php echo count($notifications); ?></span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="max-height: 300px; overflow-y: auto;">
                                <div id="notificationList">
                                    <?php foreach ($notifications as $notification): ?>
                                        <a href="#" class="dropdown-item notification-item" data-notification-id="<?php echo $notification['id']; ?>">
                                            <?php echo $notification['message']; ?>
                                        </a>
                                    <?php endforeach; ?>
                                </div>
                            </div>
                        </li>


                    </ul>
                    <div class="header-btn-lg pr-0">
                        <div class="widget-content p-0">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="btn-group">
                                         <a href="#" id="logoutBtn"  class="btn-outline-success metismenu-icon fa fa-power-off btn-lg" data-toggle="modal" data-target="#logoutModal"></a>
                                        <!-- <a href="query/logoutExe.php"  class="btn-outline-success metismenu-icon fa fa-power-off btn-lg"></a> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>        
                </div>
            </div>
        </div>



<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Event listener for notification items
        const notificationItems = document.querySelectorAll('.notification-item');

        notificationItems.forEach(function (notificationItem) {
            notificationItem.addEventListener('click', function (event) {
                event.preventDefault();

                // Get the ID of the clicked notification
                const notificationId = notificationItem.dataset.notificationId;

                // Send a request to update the notification status
                fetch('query/updateNotificationStatusExe.php?id=' + notificationId)
                    .then(response => response.json())
                    .then(data => {
                        if (data.status === 'success') {
                            // Update the badge count
                            const notificationBadge = document.getElementById('notificationBadge');
                            let badgeCount = parseInt(notificationBadge.textContent);
                            if (badgeCount > 0) {
                                notificationBadge.textContent = badgeCount - 1; // Decrement badge count
                            }

                            // Remove the notification item from the DOM
                            notificationItem.remove(); // Remove the clicked notification item
                        } else {
                            console.error('Error updating notification status:', data.message);
                        }
                    })
                    .catch(error => console.error('Error updating notification status:', error));
            });
        });
    });
</script>

