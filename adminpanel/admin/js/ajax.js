// Admin Log in
// $(document).on("submit","#adminLoginFrm", function(){
//    $.post("query/loginExe.php", $(this).serialize(), function(data){
//       if(data.res == "invalid")
//       {
//         Swal.fire(
//           'Invalid', 
//           'Please input valid username / password',
//           'error'
//         )
//       }
//       else if(data.res == "success")
//       {
//         $('body').fadeOut();
//         window.location.href='home.php';
//       }
//    },'json');

//    return false;
// });




// Logout
$(document).ready(function () {
    // Show logout modal when logout button is clicked
    $("#logoutBtn").on("click", function (event) {
        event.preventDefault();
        $("#logoutModal").modal("show");
    });

    // AJAX request to perform logout on confirm
    $("#confirmLogout").on("click", function () {
        $.ajax({
            url: 'query/logoutExe.php', // Path to your PHP logout script
            type: 'POST',
            success: function (response) {
                console.log("Response:", response); // Log response for debugging
                if (response.trim() === 'success') {
                    // Redirect to login page after successful logout
                    window.location.href = '../index.php';  // Adjust path to your login page
                } else if (response.trim() === 'not_logged_in') {
                    alert("No user is currently logged in.");
                } else {
                    alert("An error occurred while logging out.");
                }
            },
            error: function (xhr, status, error) {
                console.error("AJAX Error:", error); // Log any AJAX errors
            }
        });
    });
});










// hide modal for addplaces
function hideModal() {
    $('#modalForAddPlaces').modal('hide'); // Close the modal
    $('body').removeClass('modal-open'); // Remove the modal-open class from the body
    $('.modal-backdrop').remove(); // Remove the backdrop added by Bootstrap
}






// Use the hidden.bs.modal event to close the modal after it is hidden
$('#modalForAddPlaces').on('hidden.bs.modal', function () {
    // Optionally, you can perform additional actions after the modal is completely hidden
    refreshDiv();
});





// function for search
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});






// add staff
$(document).on("click", "#btnAddStaff", function () {
    console.log("Button Clicked");

    var formData = new FormData($("#addStaffForm")[0]);

    $.ajax({
        type: 'POST',
        url: 'query/addStaffExe.php', // Adjust the path to your addPlacesExe.php file
        data: formData,
        dataType: 'json',
        contentType: false,
        processData: false,
        success: function (data) {
            console.log('AJAX Success:', data);
            if (data.res === 'exist') {
                console.log('Staff already exists');
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Staff already exists',
                });
            } else if (data.res === 'success') {
                console.log('Staff added successfully');
                Swal.fire({
                    icon: 'success',
                    title: 'Success',
                    text: 'Staff added successfully',
                });
                    refreshDiv();
                    hideModal(); // Call the hideModal function

            } else {
                console.log('Failed to add Staff');
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Failed to add Staff',
                });
            }
        },
        error: function (xhr, status, error) {
            console.error('AJAX Error:', error);
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'Failed to add Staff',
            });
        }
    });
    return false;
});



// Para sa update staff
$(document).on("submit", "#updateStaffForm", function (e) {
    e.preventDefault(); // I-prevent ang default form submission

    var formData = new FormData(this);

    // I-send ang AJAX request para sa pag-update ng staff
    $.ajax({
        type: "POST",
        url: "query/updateStaffExe.php",
        data: formData,
        processData: false,
        contentType: false,
        dataType: "json",
        success: function (data) {
            if (data.res === "success") {
                // Kung matagumpay ang pag-update, ipakita ang success message gamit ang SweetAlert
                Swal.fire(
                    'Success',
                    'Staff has been successfully updated!',
                    'success'
                ).then((result) => {
                    if (result.isConfirmed) {
                        refreshDiv(); // I-refresh ang content kung kinakailangan
                        $('#updateStaffForm')[0].reset(); // I-clear ang form
                    }
                });
            } else {
                // Kung may error sa pag-update, ipakita ang error message gamit ang SweetAlert
                Swal.fire(
                    'Error!',
                    'Failed to update staff.',
                    'error'
                );
            }
        },
        error: function () {
            // Kapag may error sa AJAX request, ipakita ang error message gamit ang SweetAlert
            Swal.fire(
                'Error!',
                'Failed to communicate with the server',
                'error'
            );
        }
    });
});





// for update admin account hehe
$(document).on("submit", "#updateAdminForm", function (e) {
    e.preventDefault(); // Pigilan ang default form submission

    var formData = new FormData(this);

    // I-send ang AJAX request para sa pag-update ng admin account
    $.ajax({
        type: "POST",
        url: "query/updateAdminExe.php",
        data: formData,
        processData: false,
        contentType: false,
        dataType: "json",
        success: function (data) {
            console.log(data); // Console log para sa response
            if (data.status == 'success') {
                // Kung matagumpay ang pag-update, ipakita ang success message gamit ang SweetAlert
                Swal.fire(
                    'Success',
                    'Admin account has been successfully updated!',
                    'success'
                ).then((result) => {
                    if (result.isConfirmed) {
                        refreshDiv(); // Tawagin ang refreshDiv function
                    }
                });
            } else {
                // Kung may error sa pag-update, ipakita ang error message gamit ang SweetAlert
                Swal.fire(
                    'Error!',
                    'Failed to update admin account.',
                    'error'
                );
            }
        },
        error: function () {
            // Kapag may error sa AJAX request, ipakita ang error message gamit ang SweetAlert
            Swal.fire(
                'Error!',
                'Failed to communicate with the server',
                'error'
            );
        }
    });
});



// Save election date using AJAX
        $(document).on("click", "#btnSaveElectionDate", function () {
            var electionDate = $("#electionDate").val(); // Get selected date

            if (electionDate) {
                $.ajax({
                    type: 'POST',
                    url: 'query/save_election_date.php', // Path to the PHP file for saving the election date
                    data: { electionDate: electionDate },
                    dataType: 'json', // Expecting JSON response
                    success: function (data) {
                        console.log('AJAX Success:', data);
                        if (data.res === 'success') {
                            console.log('Election date set successfully');
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: 'Election date set successfully',
                            });
                            $('#scheduleModal').modal('hide'); // Hide the modal after saving
                        } else {
                            console.log('Failed to set election date');
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: 'Failed to set election date',
                            });
                        }
                    },
                    error: function (xhr, status, error) {
                        console.error('AJAX Error:', error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Failed to set election date',
                        });
                    }
                });
            } else {
                Swal.fire({
                    icon: 'warning',
                    title: 'Warning',
                    text: 'Please select a date.',
                });
            }
        });




// Add Voter
$(document).on("submit", "#addVoterForm", function (e) {
    e.preventDefault();

    var formData = new FormData(this);

    $.ajax({
        type: 'POST',
        url: 'query/addVoterExe.php', // Path to your PHP file
        data: formData,
        dataType: 'json',
        contentType: false,
        processData: false,
        success: function (data) {
            console.log('AJAX Success:', data);
            if (data.res === 'exist') {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Voter already exists',
                });
            } else if (data.res === 'success') {
                Swal.fire({
                    icon: 'success',
                    title: 'Success',
                    text: 'Voter added successfully',
                }).then(() => {
                    $('#modalForAddVoter').modal('hide');
                    refreshDiv(); // Replace with your table refresh logic
                });
            } else {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Failed to add Voter',
                });
            }
        },
        error: function (xhr, status, error) {
            console.error('AJAX Error:', error);
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'Failed to add Voter',
            });
        }
    });
});




// add candidate
$(document).on("click", "#btnAddCandidate", function () {
    console.log("Button Clicked");

    var formData = new FormData($("#addCandidateForm")[0]);

    $.ajax({
        type: 'POST',
        url: 'query/addCandidateExe.php', // Adjust the path to your addCandidateExe.php file
        data: formData,
        dataType: 'json',
        contentType: false,
        processData: false,
        success: function (data) {
            console.log('AJAX Success:', data);
            if (data.res === 'exist') {
                console.log('Candidate already exists');
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Candidate already exists',
                });
            } else if (data.res === 'success') {
                console.log('Candidate added successfully');
                Swal.fire({
                    icon: 'success',
                    title: 'Success',
                    text: 'Candidate added successfully',
                });
                refreshDiv();
                hideModal(); // Call the hideModal function
            } else {
                console.log('Failed to add candidate');
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Failed to add candidate',
                });
            }
        },
        error: function (xhr, status, error) {
            console.error('AJAX Error:', error);
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'Failed to add candidate',
            });
        }
    });
    return false;
});




// for update admin account
$(document).on("submit", "#updateAdminForm", function (e) {
    e.preventDefault(); // Pigilan ang default form submission

    var formData = new FormData(this);

    // I-send ang AJAX request para sa pag-update ng admin account
    $.ajax({
        type: "POST",
        url: "query/updateAdminExe.php", // Adjust this path as necessary
        data: formData,
        processData: false,
        contentType: false,
        dataType: "json",
        success: function (data) {
            console.log(data); // Console log para sa response
            if (data.status == 'success') {
                // Kung matagumpay ang pag-update, ipakita ang success message gamit ang SweetAlert
                Swal.fire(
                    'Success',
                    'Admin account has been successfully updated!',
                    'success'
                ).then((result) => {
                    if (result.isConfirmed) {
                        refreshDiv(); // Tawagin ang refreshDiv function
                    }
                });
            } else if (data.status == 'no_changes') {
                Swal.fire(
                    'No Changes',
                    'No changes were made to the account.',
                    'info'
                );
            } else {
                // Kung may error sa pag-update, ipakita ang error message gamit ang SweetAlert
                Swal.fire(
                    'Error!',
                    'Failed to update admin account.',
                    'error'
                );
            }
        },
        error: function () {
            // Kapag may error sa AJAX request, ipakita ang error message gamit ang SweetAlert
            Swal.fire(
                'Error!',
                'Failed to communicate with the server',
                'error'
            );
        }
    });
});




 
function refreshDiv()
{
  $('#tableList').load(document.URL +  ' #tableList');
  $('#refreshData').load(document.URL +  ' #refreshData');

}



