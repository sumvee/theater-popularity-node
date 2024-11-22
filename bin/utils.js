import yargs from 'yargs';
import {hideBin} from 'yargs/helpers';

const usage = '\nUsage: theater-popularity [options]';

const options = yargs(hideBin(process.argv)).
    usage(usage).
    option('d', {
        alias: 'date',
        describe: 'Date in format Y-m-d',
        type: 'string',
        demandOption: true,
    }).
    help(true).argv;

// if (options._[0] == null) {
//     showHelp();
//     process.exit(0);
// }

function showHelp() {
    console.log('usage');
    console.log('\nOptions:\r')
    console.log('\t--version\t      ' + 'Show version number.' + '\t\t' + '[boolean]\r')
    console.log('    -d, --date\t' + '              ' + 'Date in format Y-m-d.' + '\t\t' + '[string]\r')
    console.log('\t--help\t\t      ' + 'Show help.' + '\t\t\t' + '[boolean]\n')
}



function validateDate(date) {
    if (date == null) {
        showHelp();
        process.exit(1);
        return;
    }
    date = date.trim();
    const dateRegex = /^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$/;
    if (!date.match(dateRegex)) {
        console.log('Invalid date format. Please use Y-m-d format. \n e.g 2021-12-31');
        process.exit(1);
    }
}


export {options,  showHelp, validateDate };
