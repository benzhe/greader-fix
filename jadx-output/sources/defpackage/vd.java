package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import defpackage.d0;
import defpackage.wd;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

/* loaded from: classes.dex */
public class vd extends ud<Cursor> {
    public final wd<Cursor>.a m;
    public Uri n;
    public String[] o;
    public String p;
    public String[] q;
    public String r;
    public Cursor s;
    public w8 t;

    public vd(Context context) {
        super(context);
        this.m = new wd.a();
    }

    @Override // defpackage.ud, defpackage.wd
    @Deprecated
    public void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.b(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.n);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.o));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.p);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.q));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.r);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.s);
        printWriter.print(str);
        printWriter.print("mContentChanged=");
        printWriter.println(this.g);
    }

    @Override // defpackage.wd
    public void e() {
        c();
        Cursor cursor = this.s;
        if (cursor != null && !cursor.isClosed()) {
            this.s.close();
        }
        this.s = null;
    }

    @Override // defpackage.wd
    public void f() {
        Cursor cursor = this.s;
        if (cursor != null) {
            j(cursor);
        }
        boolean z = this.g;
        this.g = false;
        this.h |= z;
        if (z || this.s == null) {
            d();
        }
    }

    @Override // defpackage.wd
    public void g() {
        c();
    }

    public void j(Cursor cursor) {
        if (this.f) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        Cursor cursor2 = this.s;
        this.s = cursor;
        if (this.d) {
            super.a(cursor);
        }
        if (cursor2 == null || cursor2 == cursor || cursor2.isClosed()) {
            return;
        }
        cursor2.close();
    }

    public Cursor k() {
        synchronized (this) {
            if (this.k != null) {
                throw new b9();
            }
            this.t = new w8();
        }
        try {
            Cursor cursorU = d0.h.U(this.c.getContentResolver(), this.n, this.o, this.p, this.q, this.r, this.t);
            if (cursorU != null) {
                try {
                    cursorU.getCount();
                    cursorU.registerContentObserver(this.m);
                } catch (RuntimeException e) {
                    cursorU.close();
                    throw e;
                }
            }
            synchronized (this) {
                this.t = null;
            }
            return cursorU;
        } catch (Throwable th) {
            synchronized (this) {
                this.t = null;
                throw th;
            }
        }
    }

    public vd(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        super(context);
        this.m = new wd.a();
        this.n = uri;
        this.o = strArr;
        this.p = str;
        this.q = strArr2;
        this.r = str2;
    }
}
