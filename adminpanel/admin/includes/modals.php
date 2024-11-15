<!-- Logout Modal -->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="logoutModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="logoutModalLabel">Confirm Logout</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Are you sure you want to log out?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" id="confirmLogout">Logout</button>
            </div>
        </div>
    </div>
</div>




<!-- Modal for adding staff -->
<div class="modal fade" id="modalForAddStaff" tabindex="-1" role="dialog" aria-labelledby="modalForAddStaffLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalForAddStaffLabel">Add Staff</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Form for adding staff -->
                <form id="addStaffForm">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="username" required>
                    </div>
                    <div class="form-group">
                        <label for="staffImage">Image</label>
                        <input type="file" accept=".jpeg, .jpg, .png" class="form-control-file" id="image" name="image">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <button type="submit" class="btn btn-primary" id="btnAddStaff">Save</button>
                </form>
            </div>
        </div>
    </div>
</div>




<!-- Election Schedule Modal -->
<div class="modal fade" id="scheduleModal" tabindex="-1" role="dialog" aria-labelledby="scheduleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="scheduleModalLabel">Set Election Schedule</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="electionForm">
                    <label for="electionDate">Select Election Date:</label>
                    <!-- Simple Date Picker Input -->
                    <input class="form-control" type="date" id="electionDate" />
                    <div id="message" style="margin-top: 10px;"></div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="btnSaveElectionDate">Save Election Date</button>
            </div>
        </div>
    </div>
</div>

<!-- jQuery, Popper.js, Bootstrap JS -->
<!-- <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script> -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->

<script>
    $(document).ready(function () {
        // Optional: Automatically set today's date
        var today = new Date().toISOString().split('T')[0]; // Get today's date in YYYY-MM-DD format
        $('#electionDate').val(today); // Set the value to today's date

    });
</script>
 


<!-- Add Voter Modal -->
<div class="modal fade" id="modalForAddVoter" tabindex="-1" aria-labelledby="addVoterLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="addVoterForm" enctype="multipart/form-data">
                <div class="modal-header">
                    <h5 class="modal-title" id="addVoterLabel">Add Voter</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- Voter ID (generated automatically) -->
                    <div class="form-group">
                        <label for="voterId">Voter ID</label>
                        <input type="text" class="form-control" id="voterId" name="custom_voter_id" readonly placeholder="Auto-generated ID">
                    </div>

                    <!-- Full Name -->
                    <div class="form-group">
                        <label for="fullName">Full Name</label>
                        <input type="text" class="form-control" id="fullName" name="name" required>
                    </div>

                    <!-- Address -->
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" name="address" required>
                    </div>

                    <!-- Birthdate -->
                    <div class="form-group">
                        <label for="birthdate">Birthdate</label>
                        <input type="date" class="form-control" id="birthdate" name="birthdate" required>
                    </div>

                    <!-- Voter Image -->
                    <div class="form-group">
                        <label for="voterImage">Voter Image</label>
                        <input type="file" class="form-control-file" id="voterImage" name="voter_image" accept=".png, .jpg, .jpeg">
                    </div>

                    <!-- Fingerprint Data -->
                    <div class="form-group">
                        <label for="fingerprint">Fingerprint</label>
                        <div id="fingerprintStatus">Waiting for fingerprint...</div>
                        <button type="button" class="btn btn-info" onclick="captureFingerprint()">Capture Fingerprint</button>
                        <input type="hidden" id="fingerprintData" name="fingerprint_data">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>




<script>
    function captureFingerprint() {
    // Interact with the biometric SDK to capture fingerprint
    fingerprintSDK.capture(function(response) {
        if (response.success) {
            document.getElementById('fingerprintData').value = response.data;
            document.getElementById('fingerprintStatus').textContent = "Fingerprint captured successfully!";
        } else {
            document.getElementById('fingerprintStatus').textContent = "Failed to capture fingerprint.";
        }
    });
}

</script>



<!-- Modal for Adding Candidate -->
<div class="modal fade" id="modalForAddCandidate" tabindex="-1" role="dialog" aria-labelledby="modalForAddCandidateLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalForAddCandidateLabel">Add Candidate</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Form for Adding Candidate -->
                <form id="addCandidateForm" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="candidateName">Name</label>
                        <input type="text" class="form-control" id="candidateName" name="candidateName" required>
                    </div>
                    <div class="form-group">
                        <label for="position">Position</label>
                        <select class="form-control" id="position" name="position" required>
                            <option value="" disabled selected>Select Position</option>
                            <option value="Barangay Chairman">Barangay Chairman</option>
                            <option value="Barangay Kagawad">Barangay Kagawad</option>
                            <option value="Barangay Secretary">Barangay Secretary</option>
                            <option value="Barangay Treasurer">Barangay Treasurer</option>
                            <option value="SK Chairman">SK Chairman</option>
                            <option value="SK Kagawad">SK Kagawad</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="age">Age</label>
                        <input type="number" class="form-control" id="age" name="age" required>
                    </div>
                    <div class="form-group">
                        <label for="sex">Sex</label>
                        <select class="form-control" id="sex" name="sex" required>
                            <option value="" disabled selected>Select Sex</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="platform">Platform</label>
                        <textarea class="form-control" id="platform" name="platform" rows="3" required></textarea>
                    </div>
                    <div class="form-group">
                        <label for="partyList">Party List</label>
                        <input type="text" class="form-control" id="partyList" name="partyList" required>
                    </div>
                    <div class="form-group">
                        <label for="candidateImage">Image</label>
                        <input type="file" accept=".jpeg, .jpg, .png" class="form-control-file" id="candidateImage" name="candidateImage" required>
                    </div>
                    <button type="submit" class="btn btn-primary" id="btnAddCandidate">Save</button>
                </form>
            </div>
        </div>
    </div>
</div>

