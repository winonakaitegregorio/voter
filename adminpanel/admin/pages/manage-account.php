<link rel="stylesheet" type="text/css" href="css/mycss.css">
<div class="app-main__outer" id="yourDivToRefresh">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>Manage Admin Account</div>
                </div>
            </div>
        </div>

<?php
$query = "SELECT * FROM admin_users WHERE id = 1"; // Query para kunin ang admin account details
$statement = $conn->prepare($query);
$statement->execute();
$result = $statement->fetch(PDO::FETCH_ASSOC);
?>

<div class="container mt-5">
    <div class="row justify-content-center"> <!-- I-center ang row -->
        <div class="col-md-6"> <!-- Gamitin ang col-md-6 para sa pagpaliit ng card -->
            <div class="card">
                <div class="card-header bg-success">
                    Manage Admin Account
                </div>
                <div class="card-body">
                    <form id="updateAdminForm">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" id="username" name="username" value="<?php echo $result['username']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" class="form-control" id="email" name="email" value="<?php echo $result['email']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" value="<?php echo $result['password']; ?>">
                        </div>
                        <button type="submit" class="btn btn-primary">Update Account</button>
                        <button type="button" class="btn btn-secondary" onclick="resetForm()">Reset</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


    <script>
    function resetForm() {
        // I-set ang default values ng mga input fields
        document.getElementById("name").value = "admin";
        document.getElementById("email").value = "admin@gmail.com";
        document.getElementById("password").value = "admin123";
    }
</script>