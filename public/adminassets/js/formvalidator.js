document.addEventListener('DOMContentLoaded', function () {
    // General form validation function
    function validateForm(form) {
        let isValid = true;
        // Clear previous errors
        form.querySelectorAll('.text-danger').forEach(el => el.textContent = '');

        // Define validation rules
        const rules = [
            {
                selector: 'input[name="name"]',
                validator: value => !!value.trim(),
                errorMessage: 'Name is required'
            },
            {
                selector: 'input[name="phone"]',
                validator: value => !!value.trim(),
                errorMessage: 'Phone number is required'
            },
            {
                selector: 'input[name="email"]',
                validator: value => /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value.trim()),
                errorMessage: 'Invalid email address'
            },
            {
                selector: 'input[name="facebook"]',
                validator: value => !value || value.startsWith('http://') || value.startsWith('https://'),
                errorMessage: 'Facebook URL must start with http:// or https://'
            },
            {
                selector: 'input[name="instagram"]',
                validator: value => !value || value.startsWith('http://') || value.startsWith('https://'),
                errorMessage: 'Instagram URL must start with http:// or https://'
            },
            {
                selector: 'input[name="tiktok"]',
                validator: value => !value || value.startsWith('http://') || value.startsWith('https://'),
                errorMessage: 'TikTok URL must start with http:// or https://'
            },
            {
                selector: 'input[name="location"]',
                validator: value => !!value.trim(),
                errorMessage: 'Location is required'
            },
            {
                selector: 'input[name="image"]',
                validator: (value, file) => !file || ['image/jpeg', 'image/png', 'image/gif'].includes(file.type),
                errorMessage: 'Invalid image format. Only JPG, PNG, and GIF are allowed.'
            }
        ];

        // Run validation rules
        rules.forEach(rule => {
            const element = form.querySelector(rule.selector);
            const file = element.files ? element.files[0] : null;
            const value = element.value;

            if (!rule.validator(value, file)) {
                isValid = false;
                const errorElement = document.createElement('span');
                errorElement.className = 'text-danger';
                errorElement.textContent = rule.errorMessage;
                element.parentNode.insertBefore(errorElement, element.nextSibling);
            }
        });

        return isValid;
    }

    // Apply validation to the form on submit
    document.querySelectorAll('form').forEach(form => {
        form.addEventListener('submit', function (event) {
            if (!validateForm(form)) {
                event.preventDefault();
            }
        });
    });
});
