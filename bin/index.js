#! /usr/bin/env node

import {options, validateDate} from './utils.js';
import getTopTheater from './popular.js';

console.log('options:', options.d);
const date = options.date || options.d;
validateDate(date);


function handleTopTheaterResult(result) {
  console.log('Top Theater:', result);
}

getTopTheater(date, handleTopTheaterResult);
