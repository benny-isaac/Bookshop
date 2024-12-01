document.addEventListener('DOMContentLoaded', function() {
    const imgInput = document.getElementById('objectiveimg');
    const imgError = document.getElementById('imgError');
    const submitButton = document.getElementById('submitButton');
    let isValidImage = false;

    if (imgInput) {
        imgInput.addEventListener('change', function(event) {
            const file = event.target.files[0];

            if (file) {
                const img = new Image();
                img.src = URL.createObjectURL(file);

                img.onload = function() {
                    const width = img.width;
                    const height = img.height;

                    // Reset the error message
                    imgError.style.display = 'none';
                    imgError.textContent = '';
                    isValidImage = true;

                    // Check if the image is invalid
                    if (width < 1000 || height < 1000) {
                        imgError.textContent = 'the image is too small.' + width + 'x' + height;
                        imgError.style.display = 'block';
                        isValidImage = false;
                    }

                    // Clean up
                    URL.revokeObjectURL(img.src);
                    toggleSubmitButton();
                };

                img.onerror = function() {
                    imgError.textContent = 'Could not load image.';
                    imgError.style.display = 'block';
                    isValidImage = false;
                    toggleSubmitButton();
                };
            } else {
                imgError.textContent = 'No file selected.';
                imgError.style.display = 'block';
                isValidImage = false;
                toggleSubmitButton();
            }
        });

        // Function to toggle the submit button based on image validity
        function toggleSubmitButton() {
            submitButton.disabled = !isValidImage;
        }

        // Initially disable the submit button
        toggleSubmitButton();

        // Prevent form submission if the image is invalid
        document.getElementById('imageForm').addEventListener('submit', function(event) {
            if (!isValidImage) {
                event.preventDefault(); // Prevent form submission
                imgError.textContent = 'Please select a valid image before submitting.';
                imgError.style.display = 'block';
            }
        });
    } else {
        console.error('Element with ID "homesliderimg" not found.');
    }
});
