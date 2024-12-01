document.querySelectorAll('.imageUpload').forEach(input => {
    input.addEventListener('change', handleFiles);
});

function handleFiles(event) {
    const files = event.target.files;
    const previewContainerSelector = event.target.getAttribute('data-preview-container');
    const previewContainer = document.querySelector(`.image-preview-container[data-preview-container="${previewContainerSelector}"]`);
    previewContainer.innerHTML = ''; // Clear existing previews

    Array.from(files).forEach((file, index) => {
        if (file) {
            const reader = new FileReader();

            reader.onload = function(e) {
                const imgElement = document.createElement('img');
                imgElement.src = e.target.result;

                const divElement = document.createElement('div');
                divElement.classList.add('image-preview');

                const inscription = document.createElement('div');
                inscription.classList.add('inscription');
                inscription.textContent = 'Click to change';
                inscription.addEventListener('click', () => handleClick(previewContainerSelector, index));

                divElement.appendChild(imgElement);
                divElement.appendChild(inscription);
                previewContainer.appendChild(divElement);
            };

            reader.readAsDataURL(file);
        }
    });
}

function handleClick(previewContainerSelector, index) {
    const input = document.createElement('input');
    input.type = 'file';
    input.accept = 'image/*';
    input.addEventListener('change', (event) => handleSingleFile(event, previewContainerSelector, index));
    input.click();
}

function handleSingleFile(event, previewContainerSelector, index) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();

        reader.onload = function(e) {
            const imgElement = document.createElement('img');
            imgElement.src = e.target.result;

            const previewContainer = document.querySelector(`.image-preview-container[data-preview-container="${previewContainerSelector}"]`);
            const divElements = previewContainer.getElementsByClassName('image-preview');
            const imgElementToReplace = divElements[index].querySelector('img');
            imgElementToReplace.src = e.target.result;
        };

        reader.readAsDataURL(file);
    }
}
