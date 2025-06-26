package defpackage;

import android.os.Looper;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class qj5 {
    public static final FilenameFilter a = new a();
    public static final ExecutorService b = c50.h("awaitEvenIfOnMainThread task continuation executor");

    public class a implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return true;
        }
    }

    public static <T> T a(e45<T> e45Var) throws InterruptedException, TimeoutException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        e45Var.i(b, new w35(countDownLatch) { // from class: pj5
            public final CountDownLatch a;

            {
                this.a = countDownLatch;
            }

            @Override // defpackage.w35
            public Object a(e45 e45Var2) {
                CountDownLatch countDownLatch2 = this.a;
                FilenameFilter filenameFilter = qj5.a;
                countDownLatch2.countDown();
                return null;
            }
        });
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (e45Var.o()) {
            return e45Var.l();
        }
        if (e45Var.m()) {
            throw new CancellationException("Task is already canceled");
        }
        if (e45Var.n()) {
            throw new IllegalStateException(e45Var.k());
        }
        throw new TimeoutException();
    }

    public static int b(File file, FilenameFilter filenameFilter, int i, Comparator<File> comparator) {
        File[] fileArrListFiles = file.listFiles(filenameFilter);
        if (fileArrListFiles == null) {
            return 0;
        }
        return c(Arrays.asList(fileArrListFiles), i, comparator);
    }

    public static int c(List<File> list, int i, Comparator<File> comparator) {
        int size = list.size();
        Collections.sort(list, comparator);
        for (File file : list) {
            if (size <= i) {
                return size;
            }
            d(file);
            size--;
        }
        return size;
    }

    public static void d(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                d(file2);
            }
        }
        file.delete();
    }
}
