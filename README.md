
### About Shoreline
The Shoreline platform provides real-time monitoring, alerting, and incident automation for cloud operations. Use Shoreline to detect, debug, and automate repairs across your entire fleet in seconds with just a few lines of code.

Shoreline Agents are efficient and non-intrusive processes running in the background of all your monitored hosts. Agents act as the secure link between Shoreline and your environment's Resources, providing real-time monitoring and metric collection across your fleet. Agents can execute actions on your behalf -- everything from simple Linux commands to full remediation playbooks -- running simultaneously across all the targeted Resources.

Since Agents are distributed throughout your fleet and monitor your Resources in real time, when an issue occurs Shoreline automatically alerts your team before your operators notice something is wrong. Plus, when you're ready for it, Shoreline can automatically resolve these issues using Alarms, Actions, Bots, and other Shoreline tools that you configure. These objects work in tandem to monitor your fleet and dispatch the appropriate response if something goes wrong -- you can even receive notifications via the fully-customizable Slack integration.

Shoreline Notebooks let you convert your static runbooks into interactive, annotated, sharable web-based documents. Through a combination of Markdown-based notes and Shoreline's expressive Op language, you have one-click access to real-time, per-second debug data and powerful, fleetwide repair commands.

### What are Shoreline Op Packs?
Shoreline Op Packs are open-source collections of Terraform configurations and supporting scripts that use the Shoreline Terraform Provider and the Shoreline Platform to create turnkey incident automations for common operational issues. Each Op Pack comes with smart defaults and works out of the box with minimal setup, while also providing you and your team with the flexibility to customize, automate, codify, and commit your own Op Pack configurations.

# Debugging Cassandra Processes Using strace
---

This incident type refers to the process of using the strace command to identify and debug issues with Cassandra processes. Strace is a debugging tool that can be used to monitor system calls made by a process, which can help diagnose problems such as application crashes, performance issues, and other errors that may occur during the Cassandra process. This process is commonly used by software engineers and developers to troubleshoot issues with Cassandra and is an important step in resolving incidents related to this database management system.

### Parameters
```shell
export CASSANDRA="PLACEHOLDER"

export OUTPUT_FILE="PLACEHOLDER"

export ERROR="PLACEHOLDER"

export PATH_TO_STRACE_LOG_FILE="PLACEHOLDER"
```

## Debug

### Step 1: Identify the PID of the Cassandra process
```shell
pid=$(pgrep -f ${CASSANDRA})
```

### Step 2: Start strace on the process
```shell
strace -p $pid -o ${OUTPUT_FILE}
```

### Step 3: Analyze the strace output for issues
```shell
grep -i ${ERROR} ${OUTPUT_FILE}
```