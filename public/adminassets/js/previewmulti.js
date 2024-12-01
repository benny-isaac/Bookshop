let allFiles_facility = []; // Array to hold all selected files for facility

    function previewImages(prefix) {
        const imagesInput = document.getElementById(`${prefix}_images`);
        const newFiles = Array.from(imagesInput.files);

        // Append new files to allFiles array
        newFiles.forEach(file => {
            allFiles_facility.push(file);
            displayImage(file, allFiles_facility.length - 1, prefix); // Pass index of new image
        });

        // Update the file input’s files property with all files
        updateFileInput(prefix);
    }

    function displayImage(file, index, prefix) {
        const imagePreview = document.getElementById(`imagePreview_${prefix}`);
        const reader = new FileReader();

        reader.onload = function (e) {
            const imageContainer = document.createElement('div');
            imageContainer.classList.add('image-container');
            imageContainer.dataset.index = index;

            const img = document.createElement('img');
            img.src = e.target.result;
            img.alt = `Preview ${index + 1}`;

            const removeButton = document.createElement('button');
            removeButton.classList.add('remove-btn');
            removeButton.innerText = 'x';
            removeButton.onclick = () => removeImage(index, imageContainer, prefix);

            imageContainer.appendChild(img);
            imageContainer.appendChild(removeButton);
            imagePreview.appendChild(imageContainer);
        };

        reader.readAsDataURL(file);
    }

    function addMoreImages(prefix) {
        document.getElementById(`${prefix}_images`).click();
    }

    function removeImage(index, imageContainer, prefix) {
        allFiles_facility.splice(index, 1); // Remove the image from allFiles array
        imageContainer.remove();   // Remove only this image's preview

        // Re-index remaining images
        document.querySelectorAll(`#imagePreview_${prefix} .image-container`).forEach((container, newIndex) => {
            container.dataset.index = newIndex;
            allFiles_facility[newIndex] = allFiles_facility[newIndex];
        });

        updateFileInput(prefix); // Refresh input files to match allFiles array
    }

    function updateFileInput(prefix) {
        const imagesInput = document.getElementById(`${prefix}_images`);
        const dataTransfer = new DataTransfer();

        allFiles_facility.forEach(file => dataTransfer.items.add(file));
        imagesInput.files = dataTransfer.files; // Update the input files
    }