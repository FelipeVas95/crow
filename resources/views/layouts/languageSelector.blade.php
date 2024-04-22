<select onchange="changeLanguage(this.value)">
    @foreach(config('app.locales') as $locale => $name)
        <option value="{{ $locale }}" {{ app()->getLocale() == $locale ? 'selected' : '' }}>
            {{ $name }}
        </option>
    @endforeach
</select>

<script>
    function changeLanguage(locale) {
        fetch('/change-language', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': '{{ csrf_token() }}' // Añade el token CSRF si estás utilizando Laravel para prevenir ataques CSRF
            },
            body: JSON.stringify({ locale: locale })
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => location.reload())
        .catch(error => console.error('Error changing language', error));
    }
</script>
