package defpackage;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public abstract class b8 {

    public class a implements Runnable {
        public final /* synthetic */ Typeface e;

        public a(Typeface typeface) {
            this.e = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            b8.this.d(this.e);
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ int e;

        public b(int i) {
            this.e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            b8.this.c(this.e);
        }
    }

    public final void a(int i, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new b(i));
    }

    public final void b(Typeface typeface, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new a(typeface));
    }

    public abstract void c(int i);

    public abstract void d(Typeface typeface);
}
