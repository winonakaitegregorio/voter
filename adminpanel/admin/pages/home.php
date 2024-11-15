<style>
   /* Link styles */
   a:link, a:visited {
      text-decoration: none;
      color: inherit;
   }

   /* Page title styling */
   .page-title-wrapper {
      background-color: #f4f7fc;
      border-radius: 15px;
      padding: 25px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
   }

   .page-title-heading {
      font-size: 2em;
      font-weight: bold;
      color: #333;
      display: flex;
      align-items: center;
   }

   .page-title-icon {
      font-size: 2.5em;
      color: #007bff;
      margin-right: 15px;
   }

   .page-title-subheading {
      font-size: 1.2em;
      color: #666;
      margin-top: 5px;
   }

   /* Card styling */
   .card {
      border: none;
      border-radius: 10px;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
   }

   .card:hover {
      transform: translateY(-10px);
      box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
   }

   .card-body {
      padding: 20px;
   }

   .card-title {
      font-size: 1.5em;
      font-weight: bold;
   }

   .card-text {
      font-size: 1.2em;
      color: #fff;
   }

   /* Icon styling */
   .card-icon {
      font-size: 2.5em;
   }

   /* Color themes for cards */
   .card-bg-primary { background-color: #007bff; color: #fff; }
   .card-bg-success { background-color: #28a745; color: #fff; }
   .card-bg-warning { background-color: #ffc107; color: #fff; }
   .card-bg-danger { background-color: #dc3545; color: #fff; }
   .card-bg-info { background-color: #17a2b8; color: #fff; }

   /* Responsive spacing */
   .g-4 > * {
      padding: 15px;
   }
</style>

<div class="app-main__outer">
   <div id="refreshData">
      <div class="app-main__inner">
         <!-- Page Title -->
         <div class="app-page-title">
            <div class="page-title-wrapper">
               <div class="page-title-heading">
                  <div class="page-title-icon">
                     <i class="fa fa-users" aria-hidden="true"></i>
                  </div>
                  <div>
                     BARANGAY ELECTION AND VOTER'S MANAGEMENT SYSTEM
                     <div class="page-title-subheading">"Empowering local democracy."</div>
                  </div>
               </div>
            </div>
         </div>

         <!-- Dashboard Statistics -->
         <div class="row text-center g-4">
            <!-- Registered Voters Card -->
            <div class="col-md-4">
               <div class="card card-bg-primary shadow-sm">
                  <div class="card-body d-flex justify-content-between align-items-center">
                     <div>
                        <h5 class="card-title"><i class="fas fa-users"></i> Reg. Voters</h5>
                        <p class="card-text">Total: <strong>1,234</strong></p>
                     </div>
                     <i class="fas fa-vote-yea card-icon"></i>
                  </div>
               </div>
            </div>

            <!-- Elections Managed Card -->
            <div class="col-md-4">
               <div class="card card-bg-success shadow-sm">
                  <div class="card-body d-flex justify-content-between align-items-center">
                     <div>
                        <h5 class="card-title"><i class="fas fa-calendar-alt"></i> Elections Managed</h5>
                        <p class="card-text">Total: <strong>12</strong></p>
                     </div>
                     <i class="fas fa-calendar-check card-icon"></i>
                  </div>
               </div>
            </div>

            <!-- Pending Requests Card -->
            <div class="col-md-4">
               <div class="card card-bg-warning shadow-sm">
                  <div class="card-body d-flex justify-content-between align-items-center">
                     <div>
                        <h5 class="card-title"><i class="fas fa-user-clock"></i> Pending Requests</h5>
                        <p class="card-text">Total: <strong>27</strong></p>
                     </div>
                     <i class="fas fa-exclamation-circle card-icon"></i>
                  </div>
               </div>
            </div>

            <!-- Active Voters Card -->
            <div class="col-md-4">
               <div class="card card-bg-info shadow-sm">
                  <div class="card-body d-flex justify-content-between align-items-center">
                     <div>
                        <h5 class="card-title"><i class="fas fa-check-circle"></i> Active Voters</h5>
                        <p class="card-text">Total: <strong>980</strong></p>
                     </div>
                     <i class="fas fa-user-check card-icon"></i>
                  </div>
               </div>
            </div>

            <!-- Current Officials Card -->
            <div class="col-md-4">
               <div class="card card-bg-danger shadow-sm">
                  <div class="card-body d-flex justify-content-between align-items-center">
                     <div>
                        <h5 class="card-title"><i class="fas fa-user-tie"></i> Current Officials</h5>
                        <p class="card-text">Total: <strong>15</strong></p>
                     </div>
                     <i class="fas fa-user-tie card-icon"></i>
                  </div>
               </div>
            </div>

            <!-- Candidates Card -->
            <div class="col-md-4">
               <div class="card card-bg-primary shadow-sm">
                  <div class="card-body d-flex justify-content-between align-items-center">
                     <div>
                        <h5 class="card-title"><i class="fas fa-users-crown"></i> Candidates</h5>
                        <p class="card-text">Total: <strong>32</strong></p>
                     </div>
                     <i class="fas fa-user-friends card-icon"></i>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
