package okhttp3.internal.concurrent;

import defpackage.ek7;
import defpackage.el7;
import defpackage.im7;
import defpackage.jo;
import defpackage.yj7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import okhttp3.internal.Util;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public final class TaskQueue {
    private Task activeTask;
    private boolean cancelActiveTask;
    private final List<Task> futureTasks;
    private final String name;
    private boolean shutdown;
    private final TaskRunner taskRunner;

    public static final class AwaitIdleTask extends Task {
        private final CountDownLatch latch;

        public AwaitIdleTask() {
            super(jo.s(new StringBuilder(), Util.okHttpName, " awaitIdle"), false);
            this.latch = new CountDownLatch(1);
        }

        public final CountDownLatch getLatch() {
            return this.latch;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            this.latch.countDown();
            return -1L;
        }
    }

    /* renamed from: okhttp3.internal.concurrent.TaskQueue$execute$1, reason: invalid class name */
    public static final class AnonymousClass1 extends Task {
        public final /* synthetic */ el7 $block;
        public final /* synthetic */ boolean $cancelable;
        public final /* synthetic */ String $name;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(el7 el7Var, String str, boolean z, String str2, boolean z2) {
            super(str2, z2);
            this.$block = el7Var;
            this.$name = str;
            this.$cancelable = z;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            this.$block.invoke();
            return -1L;
        }
    }

    /* renamed from: okhttp3.internal.concurrent.TaskQueue$schedule$2, reason: invalid class name */
    public static final class AnonymousClass2 extends Task {
        public final /* synthetic */ el7 $block;
        public final /* synthetic */ String $name;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(el7 el7Var, String str, String str2) {
            super(str2, false, 2, null);
            this.$block = el7Var;
            this.$name = str;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            return ((Number) this.$block.invoke()).longValue();
        }
    }

    public TaskQueue(TaskRunner taskRunner, String str) {
        im7.e(taskRunner, "taskRunner");
        im7.e(str, InetAddressKeys.KEY_NAME);
        this.taskRunner = taskRunner;
        this.name = str;
        this.futureTasks = new ArrayList();
    }

    public static /* synthetic */ void execute$default(TaskQueue taskQueue, String str, long j, boolean z, el7 el7Var, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        boolean z2 = (i & 4) != 0 ? true : z;
        im7.e(str, InetAddressKeys.KEY_NAME);
        im7.e(el7Var, "block");
        taskQueue.schedule(new AnonymousClass1(el7Var, str, z2, str, z2), j);
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, Task task, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        taskQueue.schedule(task, j);
    }

    public final void cancelAll() {
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            synchronized (this.taskRunner) {
                if (cancelAllAndDecide$okhttp()) {
                    this.taskRunner.kickCoordinator$okhttp(this);
                }
            }
            return;
        }
        StringBuilder sbZ = jo.z("Thread ");
        Thread threadCurrentThread = Thread.currentThread();
        im7.d(threadCurrentThread, "Thread.currentThread()");
        sbZ.append(threadCurrentThread.getName());
        sbZ.append(" MUST NOT hold lock on ");
        sbZ.append(this);
        throw new AssertionError(sbZ.toString());
    }

    public final boolean cancelAllAndDecide$okhttp() {
        Task task = this.activeTask;
        if (task != null) {
            im7.c(task);
            if (task.getCancelable()) {
                this.cancelActiveTask = true;
            }
        }
        boolean z = false;
        for (int size = this.futureTasks.size() - 1; size >= 0; size--) {
            if (this.futureTasks.get(size).getCancelable()) {
                Task task2 = this.futureTasks.get(size);
                if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(task2, this, "canceled");
                }
                this.futureTasks.remove(size);
                z = true;
            }
        }
        return z;
    }

    public final void execute(String str, long j, boolean z, el7<yj7> el7Var) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        im7.e(el7Var, "block");
        schedule(new AnonymousClass1(el7Var, str, z, str, z), j);
    }

    public final Task getActiveTask$okhttp() {
        return this.activeTask;
    }

    public final boolean getCancelActiveTask$okhttp() {
        return this.cancelActiveTask;
    }

    public final List<Task> getFutureTasks$okhttp() {
        return this.futureTasks;
    }

    public final String getName$okhttp() {
        return this.name;
    }

    public final List<Task> getScheduledTasks() {
        List<Task> listS;
        synchronized (this.taskRunner) {
            listS = ek7.s(this.futureTasks);
        }
        return listS;
    }

    public final boolean getShutdown$okhttp() {
        return this.shutdown;
    }

    public final TaskRunner getTaskRunner$okhttp() {
        return this.taskRunner;
    }

    public final CountDownLatch idleLatch() {
        synchronized (this.taskRunner) {
            if (this.activeTask == null && this.futureTasks.isEmpty()) {
                return new CountDownLatch(0);
            }
            Task task = this.activeTask;
            if (task instanceof AwaitIdleTask) {
                return ((AwaitIdleTask) task).getLatch();
            }
            for (Task task2 : this.futureTasks) {
                if (task2 instanceof AwaitIdleTask) {
                    return ((AwaitIdleTask) task2).getLatch();
                }
            }
            AwaitIdleTask awaitIdleTask = new AwaitIdleTask();
            if (scheduleAndDecide$okhttp(awaitIdleTask, 0L, false)) {
                this.taskRunner.kickCoordinator$okhttp(this);
            }
            return awaitIdleTask.getLatch();
        }
    }

    public final void schedule(Task task, long j) {
        im7.e(task, "task");
        synchronized (this.taskRunner) {
            if (!this.shutdown) {
                if (scheduleAndDecide$okhttp(task, j, false)) {
                    this.taskRunner.kickCoordinator$okhttp(this);
                }
            } else if (task.getCancelable()) {
                if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(task, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    public final boolean scheduleAndDecide$okhttp(Task task, long j, boolean z) {
        String string;
        im7.e(task, "task");
        task.initQueue$okhttp(this);
        long jNanoTime = this.taskRunner.getBackend().nanoTime();
        long j2 = jNanoTime + j;
        int iIndexOf = this.futureTasks.indexOf(task);
        if (iIndexOf != -1) {
            if (task.getNextExecuteNanoTime$okhttp() <= j2) {
                if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(task, this, "already scheduled");
                }
                return false;
            }
            this.futureTasks.remove(iIndexOf);
        }
        task.setNextExecuteNanoTime$okhttp(j2);
        if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
            if (z) {
                StringBuilder sbZ = jo.z("run again after ");
                sbZ.append(TaskLoggerKt.formatDuration(j2 - jNanoTime));
                string = sbZ.toString();
            } else {
                StringBuilder sbZ2 = jo.z("scheduled after ");
                sbZ2.append(TaskLoggerKt.formatDuration(j2 - jNanoTime));
                string = sbZ2.toString();
            }
            TaskLoggerKt.log(task, this, string);
        }
        Iterator<Task> it = this.futureTasks.iterator();
        int size = 0;
        while (true) {
            if (!it.hasNext()) {
                size = -1;
                break;
            }
            if (it.next().getNextExecuteNanoTime$okhttp() - jNanoTime > j) {
                break;
            }
            size++;
        }
        if (size == -1) {
            size = this.futureTasks.size();
        }
        this.futureTasks.add(size, task);
        return size == 0;
    }

    public final void setActiveTask$okhttp(Task task) {
        this.activeTask = task;
    }

    public final void setCancelActiveTask$okhttp(boolean z) {
        this.cancelActiveTask = z;
    }

    public final void setShutdown$okhttp(boolean z) {
        this.shutdown = z;
    }

    public final void shutdown() {
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            synchronized (this.taskRunner) {
                this.shutdown = true;
                if (cancelAllAndDecide$okhttp()) {
                    this.taskRunner.kickCoordinator$okhttp(this);
                }
            }
            return;
        }
        StringBuilder sbZ = jo.z("Thread ");
        Thread threadCurrentThread = Thread.currentThread();
        im7.d(threadCurrentThread, "Thread.currentThread()");
        sbZ.append(threadCurrentThread.getName());
        sbZ.append(" MUST NOT hold lock on ");
        sbZ.append(this);
        throw new AssertionError(sbZ.toString());
    }

    public String toString() {
        return this.name;
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, String str, long j, el7 el7Var, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        im7.e(str, InetAddressKeys.KEY_NAME);
        im7.e(el7Var, "block");
        taskQueue.schedule(new AnonymousClass2(el7Var, str, str), j);
    }

    public final void schedule(String str, long j, el7<Long> el7Var) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        im7.e(el7Var, "block");
        schedule(new AnonymousClass2(el7Var, str, str), j);
    }
}
