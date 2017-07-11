jQuery(function($) {
    var $countryInput = $('.js-country-input');

    var extendCitySelect2 = function () {
        $('.js-city-input').data('auto-select2').extra =
            {country_id: $countryInput.val()};
    };

    extendCitySelect2();

    $countryInput.on('change', extendCitySelect2);
});
