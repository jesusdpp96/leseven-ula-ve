

function getDateYYYYMMDD(date) {
    const year = `${date.getFullYear()}`;
    let month = `${date.getMonth()}`;
    month = month.length === 1 ? `0${month}`: month;

    let day = `${date.getDate()}`;
    day = day.length === 1 ? `0${day}`: day;
    const fecha = `${year}-${month}-${day}`;

    return fecha;
}

module.exports = getDateYYYYMMDD;