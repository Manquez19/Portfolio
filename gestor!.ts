interface Task {
  id: number;
  title: string;
  description: string;
  completed: boolean;
}

class TaskManager {
  private tasks: Task[];

  constructor() {
    this.tasks = [];
  }

  addTask(task: Task): void {
    this.tasks.push(task);
  }

  completeTask(taskId: number): void {
    const task = this.tasks.find((t) => t.id === taskId);
    if (task) {
      task.completed = true;
    }
  }

  deleteTask(taskId: number): void {
    this.tasks = this.tasks.filter((t) => t.id !== taskId);
  }

  getAllTasks(): Task[] {
    return this.tasks;
  }
}

// Ejemplo de uso del gestor de tareas
const taskManager = new TaskManager();

// Agregar nuevas tareas
taskManager.addTask({ id: 1, title: "Completar informe", description: "Terminar el informe mensual", completed: false });
taskManager.addTask({ id: 2, title: "Hacer ejercicio", description: "Ir al gimnasio por la tarde", completed: false });

// Marcar una tarea como completada
taskManager.completeTask(1);

// Eliminar una tarea
taskManager.deleteTask(2);

// Obtener todas las tareas
const allTasks = taskManager.getAllTasks();
console.log(allTasks);