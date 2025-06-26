package defpackage;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import defpackage.d0;
import defpackage.td;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class wd<D> {
    public int a;
    public b<D> b;
    public Context c;
    public boolean d = false;
    public boolean e = false;
    public boolean f = true;
    public boolean g = false;
    public boolean h = false;

    public final class a extends ContentObserver {
        public a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            wd wdVar = wd.this;
            if (wdVar.d) {
                wdVar.d();
            } else {
                wdVar.g = true;
            }
        }
    }

    public interface b<D> {
    }

    public wd(Context context) {
        this.c = context.getApplicationContext();
    }

    public void a(D d) {
        b<D> bVar = this.b;
        if (bVar != null) {
            td.a aVar = (td.a) bVar;
            if (Looper.myLooper() == Looper.getMainLooper()) {
                aVar.h(d);
            } else {
                aVar.i(d);
            }
        }
    }

    @Deprecated
    public void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.a);
        printWriter.print(" mListener=");
        printWriter.println(this.b);
        if (this.d || this.g || this.h) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.d);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.g);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.h);
        }
        if (this.e || this.f) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.e);
            printWriter.print(" mReset=");
            printWriter.println(this.f);
        }
    }

    public boolean c() {
        throw null;
    }

    public void d() {
        throw null;
    }

    public void e() {
        throw null;
    }

    public void f() {
        throw null;
    }

    public void g() {
        throw null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        d0.h.e(this, sb);
        sb.append(" id=");
        return jo.q(sb, this.a, StringSubstitutor.DEFAULT_VAR_END);
    }
}
