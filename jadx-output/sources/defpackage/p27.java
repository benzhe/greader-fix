package defpackage;

import android.graphics.Bitmap;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import java.util.List;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes2.dex */
public final class p27 {
    public static final StringBuilder a = new StringBuilder();
    public static final bt7 b = bt7.l("RIFF");
    public static final bt7 c = bt7.l("WEBP");

    public static class a extends Thread {
        public a(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws SecurityException, IllegalArgumentException {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    public static class b implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new a(runnable);
        }
    }

    public static void a() {
        if (!(Looper.getMainLooper().getThread() == Thread.currentThread())) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    public static int b(Bitmap bitmap) {
        int allocationByteCount = bitmap.getAllocationByteCount();
        if (allocationByteCount >= 0) {
            return allocationByteCount;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    public static String c(n17 n17Var) {
        return d(n17Var, "");
    }

    public static String d(n17 n17Var, String str) {
        StringBuilder sb = new StringBuilder(str);
        l17 l17Var = n17Var.o;
        if (l17Var != null) {
            sb.append(l17Var.b.b());
        }
        List<l17> list = n17Var.p;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (i > 0 || l17Var != null) {
                    sb.append(", ");
                }
                sb.append(list.get(i).b.b());
            }
        }
        return sb.toString();
    }

    public static void e(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4));
    }
}
