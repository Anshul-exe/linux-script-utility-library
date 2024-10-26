# TaskDiary

TaskDiary is a command-line task manager designed to boost productivity right from your terminal. With TaskDiary, you can manage tasks, create categorized to-do lists, and take notes for capturing important information—no more trying to remember everything!

## Features

- **Command-line Interface**: Use `$ todo` to manage tasks directly from the console.
- **Add/Remove Tasks**: Add or remove tasks as needed.
- **Multiple Lists**: Organize tasks by creating separate lists for different categories.
- **Mark as Done**: Easily mark tasks as complete.
- **Clear List**: Clean up task lists with a simple command.
- **Flexible Usage**: Tailor lists and task management to fit your workflow.

## Usage

### Starting TaskDiary

Run `todo` without any arguments to start.

```sh
$ todo
```

### Commands

TaskDiary provides several options to streamline task management:

- **Add Tasks**: Add a task to a specific list (default is `TODO`).
  - Command: `a` or `add`

- **View Task List**: View all tasks in the specified list.
  - Command: `ls` or `tasklist`

- **View All Lists**: Show all available lists.
  - Command: `l` or `lists`

- **Add New List**: Create a new list for categorizing tasks.
  - Command: `al` or `addlist`

- **Mark Task as Done**: Mark a task as done or remove it from the chosen list.
  - Command: `d` or `done`

- **Clear Console**: Clear the terminal screen.
  - Command: `c` or `clear`

- **Remove a List**: Delete a specific list.
  - Command: `rml` or `removelist`

- **Clear Current List**: Remove all tasks from the current list.
  - Command: `cl` or `cleanlist`

To view command options within TaskDiary, simply type `h` or `help`.

## Example Usage

```sh
# Add a task to the default TODO list
$ todo a "Finish project documentation"

# View all tasks in a specific list
$ todo ls <list_name>

# Add a new list for a project
$ todo al "Project_X"

# Mark a task as done
$ todo d "Finish project documentation"
```

## Contributing

We're looking forward to contributions to this project! If you'd like to help make **TaskDiary** even better, please check out the actual live project here: [Live Project Link](https://github.com/ashish-kus/TaskDiary).

