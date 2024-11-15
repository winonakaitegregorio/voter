<style>
    .scrollbar-sidebar {
        overflow-y: auto;
        height: calc(100vh - 120px); /* Adjust the height as needed */
        position: relative;
    }

    .scrollbar-sidebar::-webkit-scrollbar {
        width: 8px; /* Width of the scrollbar */
    }

    .scrollbar-sidebar::-webkit-scrollbar-track {
        background: #f1f1f1; /* Color of the track */
    }

    .scrollbar-sidebar::-webkit-scrollbar-thumb {
        background: #888; /* Color of the scroll thumb */
    }

    .scrollbar-sidebar::-webkit-scrollbar-thumb:hover {
        background: #555; /* Color of the scroll thumb on hover */
    }

    .scrollbar-sidebar {
        scrollbar-width: thin; /* Hide scrollbar in Firefox 64+ */
    }

    .scrollbar-sidebar::-webkit-scrollbar {
        display: none; /* Hide scrollbar in older versions of Chrome, Safari, and Opera */
    }

    #timeDate {
        font-size: 12px;
        color: #666;
        text-align: center;
        position: absolute;
        bottom: 0;
        width: 100%;
        padding: 10px 0;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Shadow effect */
    }

    #time {
        font-size: 20px; /* Adjust time font size */
        font-weight: bold; /* Bold time */
        color: green;
    }

    #date {
        font-size: 12px; /* Adjust date font size */
        font-weight: normal; /* Unbold date */
    }

    @media print {
        .sidebar {
            display: none;
        }
    }
</style>

<div class="app-sidebar sidebar-shadow sidebar">
    <div class="app-header__logo">
        <div class="logo-src"></div>
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
    <div class="scrollbar-sidebar">
        <div class="app-sidebar__inner">
            <ul class="vertical-nav-menu">
                <li class="app-sidebar__heading">Manage Barangay</li>
                <li>
                    <a href="home.php">
                        <i class="metismenu-icon fas fa-home"></i>Dashboard
                    </a>

                    <a href="home.php?page=election">
                        <i class="metismenu-icon fas fa-vote-yea"></i>Election
                    </a>

                    <a href="home.php?page=officials">
                        <i class="metismenu-icon fas fa-vote-yea"></i>Officials
                    </a>
                </li>

                <li class="app-sidebar__heading">MANAGE USER</li>
                <li>
                    <a href="home.php?page=staff">
                        <i class="metismenu-icon fas fa-users"></i>Staff
                    </a>
                    <a href="home.php?page=voters">
                        <i class="metismenu-icon fas fa-users"></i>Voter
                    </a>
                    <a href="home.php?page=candidates">
                        <i class="metismenu-icon fas fa-users"></i>Candidates
                    </a>
                </li>

                <li class="app-sidebar__heading">Manage Utilities</li>
                <li>
                    <a href="home.php?page=archive">
                        <i class="metismenu-icon fas fa-trash"></i>Archive
                    </a>

                    <?php if (isset($_SESSION['admin']['role']) && $_SESSION['admin']['role'] == 'admin'): ?>
                        <a href="home.php?page=activity">
                            <i class="metismenu-icon fas fa-paperclip"></i>Activity Logs
                        </a>
                    <?php endif; ?>

                    <a href="home.php?page=manage-account">
                        <i class="metismenu-icon fas fa-user"></i>Manage Account
                    </a>
                    <a href="home.php?page=backupDatabase">
                        <i class="metismenu-icon fas fa-cloud"></i>Backup and Restore
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div id="timeDate">
        <div id="time">12:00</div> <!-- Time will be displayed here -->
        <div id="date">Mar 19, 2024</div> <!-- Date will be displayed here -->
    </div>
</div>



<script>
    // Function to update time and date
    function updateTimeDate() {
        const now = new Date();
        const options = { weekday: 'long', year: 'numeric', month: 'short', day: 'numeric', hour: 'numeric', minute: 'numeric', second: 'numeric', hour12: true };
        const formattedDateTime = now.toLocaleDateString('en-US', options);
        const time = now.toLocaleTimeString('en-US', { hour: '2-digit', minute: '2-digit' });
        document.getElementById('time').textContent = time;
        document.getElementById('date').textContent = formattedDateTime;
    }

    // Update time and date initially
    updateTimeDate();

    // Update time and date every second
    setInterval(updateTimeDate, 1000);
</script>
