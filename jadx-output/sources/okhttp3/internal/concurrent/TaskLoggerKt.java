package okhttp3.internal.concurrent;

import defpackage.el7;
import defpackage.im7;
import defpackage.jo;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes2.dex */
public final class TaskLoggerKt {
    public static final String formatDuration(long j) {
        String str;
        if (j <= -999500000) {
            str = ((j - 500000000) / Http2Connection.DEGRADED_PONG_TIMEOUT_NS) + " s ";
        } else if (j <= -999500) {
            str = ((j - 500000) / 1000000) + " ms";
        } else if (j <= 0) {
            str = ((j - 500) / 1000) + " µs";
        } else if (j < 999500) {
            str = ((j + 500) / 1000) + " µs";
        } else if (j < 999500000) {
            str = ((j + 500000) / 1000000) + " ms";
        } else {
            str = ((j + 500000000) / Http2Connection.DEGRADED_PONG_TIMEOUT_NS) + " s ";
        }
        String str2 = String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
        im7.d(str2, "java.lang.String.format(format, *args)");
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void log(Task task, TaskQueue taskQueue, String str) {
        Logger logger = TaskRunner.Companion.getLogger();
        StringBuilder sb = new StringBuilder();
        sb.append(taskQueue.getName$okhttp());
        sb.append(' ');
        String str2 = String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1));
        im7.d(str2, "java.lang.String.format(format, *args)");
        sb.append(str2);
        sb.append(": ");
        sb.append(task.getName());
        logger.fine(sb.toString());
    }

    public static final <T> T logElapsed(Task task, TaskQueue taskQueue, el7<? extends T> el7Var) {
        long jNanoTime;
        im7.e(task, "task");
        im7.e(taskQueue, "queue");
        im7.e(el7Var, "block");
        boolean zIsLoggable = TaskRunner.Companion.getLogger().isLoggable(Level.FINE);
        if (zIsLoggable) {
            jNanoTime = taskQueue.getTaskRunner$okhttp().getBackend().nanoTime();
            log(task, taskQueue, "starting");
        } else {
            jNanoTime = -1;
        }
        try {
            T tInvoke = el7Var.invoke();
            if (zIsLoggable) {
                long jNanoTime2 = taskQueue.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime;
                StringBuilder sbZ = jo.z("finished run in ");
                sbZ.append(formatDuration(jNanoTime2));
                log(task, taskQueue, sbZ.toString());
            }
            return tInvoke;
        } catch (Throwable th) {
            if (zIsLoggable) {
                long jNanoTime3 = taskQueue.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime;
                StringBuilder sbZ2 = jo.z("failed a run in ");
                sbZ2.append(formatDuration(jNanoTime3));
                log(task, taskQueue, sbZ2.toString());
            }
            throw th;
        }
    }

    public static final void taskLog(Task task, TaskQueue taskQueue, el7<String> el7Var) {
        im7.e(task, "task");
        im7.e(taskQueue, "queue");
        im7.e(el7Var, "messageBlock");
        if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
            log(task, taskQueue, el7Var.invoke());
        }
    }
}
