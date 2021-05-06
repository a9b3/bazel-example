const fs = require("fs");
const path = require("path");

function parseContent(argv) {
  return {
    [path.dirname(argv.outputJson)]: {
      display: argv.display,
      description: argv.description,
      slackChannels: argv.slackChannels,
      docs: argv.docs,
      taskManagement: argv.taskManagement,
      oncall: argv.oncall,
      opsGenieTeam: argv.opsGenieTeam,
      teams: argv.teams,
    },
  };
}

fs.writeFileSync(process.argv.outputJson, parseContent(process.argv));
