package defpackage;

import android.util.Log;
import java.io.Writer;

@Deprecated
/* loaded from: classes.dex */
public class r9 extends Writer {
    public final String e;
    public StringBuilder f = new StringBuilder(128);

    public r9(String str) {
        this.e = str;
    }

    public final void a() {
        if (this.f.length() > 0) {
            Log.d(this.e, this.f.toString());
            StringBuilder sb = this.f;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                a();
            } else {
                this.f.append(c);
            }
        }
    }
}
