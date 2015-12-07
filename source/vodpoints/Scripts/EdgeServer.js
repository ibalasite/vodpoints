/* IP 驗證 */
$("#IPAddress, .IP").mask('0ZZ.0ZZ.0ZZ.0ZZ', {
    translation: {
        'Z': {
            pattern: /[0-9]/, optional: true
        }
    }
});

function isIpAddress(ip) {
    if (typeof ip !== 'string') {
        return false;
    }

    var parts = ip.split('.');

    if (parts.length !== 4) {
        return false;
    }

    for (var i = 0; i < 4; ++i) {
        var part = parts[i];
        if (!/^\d{1,3}$/.test(part)) {
            return false;
        }

        var n = +part;
        if (0 > n || n > 0xff) {
            return false;
        }
    }

    return true;
}
