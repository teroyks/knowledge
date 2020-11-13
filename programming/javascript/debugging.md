# Javascript Debugging

## Console Usage

- `console.count(label)` -- count how many times code is executed
- `console.dir(obj, { depth: null })` -- output object contents
- `console.log({obj[, obj, ...]})` -- include object name in the log entry
- `console.log("%cMessage", "css: rules;")` -- add CSS styles to a log message
- `console.profile(profileName) ... console.profileEnd(profileName)` -- show CPU profile for code in between
- `console.table()` -- format output into a table
- `console.time(id) ... console.timeEnd(id)` -- show time elapsed in between
- `console.trace()` -- show message stack trace

### Log Levels

- `console.log` -- info level
- `console.debug`
- `console.warn`
- `console.error`

Different levels can be displayed with different styles. In addition, you can filter out messages based on level in the dev console.

## Debugger

Add `debugger` to your code and you can debug stuff from that point forward

## Inspect

Node package that outputs a stringified version of an object:

```js
import * as util from 'util'
console.log(util.inspect(object))
```

## Misc

- [more `console.log` tips](https://dev.to/ackshaey/level-up-your-javascript-browser-logs-with-these-console-log-tips-55o2)
- [Juhis on JS debugging](https://hamatti.org/guides/humane-guide-to-debugging/)
