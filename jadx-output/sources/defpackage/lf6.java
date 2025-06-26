package defpackage;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class lf6 extends gg6 {
    public static final Writer s = new a();
    public static final yd6 t = new yd6("closed");
    public final List<td6> p;
    public String q;
    public td6 r;

    public class a extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    public lf6() {
        super(s);
        this.p = new ArrayList();
        this.r = vd6.a;
    }

    @Override // defpackage.gg6
    public gg6 C(Number number) throws IOException {
        if (number == null) {
            L(vd6.a);
            return this;
        }
        if (!this.j) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        L(new yd6(number));
        return this;
    }

    @Override // defpackage.gg6
    public gg6 D(String str) throws IOException {
        if (str == null) {
            L(vd6.a);
            return this;
        }
        L(new yd6(str));
        return this;
    }

    @Override // defpackage.gg6
    public gg6 E(boolean z) throws IOException {
        L(new yd6(Boolean.valueOf(z)));
        return this;
    }

    public final td6 I() {
        return this.p.get(r0.size() - 1);
    }

    public final void L(td6 td6Var) {
        if (this.q != null) {
            if (!(td6Var instanceof vd6) || this.m) {
                wd6 wd6Var = (wd6) I();
                wd6Var.a.put(this.q, td6Var);
            }
            this.q = null;
            return;
        }
        if (this.p.isEmpty()) {
            this.r = td6Var;
            return;
        }
        td6 td6VarI = I();
        if (!(td6VarI instanceof qd6)) {
            throw new IllegalStateException();
        }
        ((qd6) td6VarI).e.add(td6Var);
    }

    @Override // defpackage.gg6
    public gg6 b() throws IOException {
        qd6 qd6Var = new qd6();
        L(qd6Var);
        this.p.add(qd6Var);
        return this;
    }

    @Override // defpackage.gg6
    public gg6 c() throws IOException {
        wd6 wd6Var = new wd6();
        L(wd6Var);
        this.p.add(wd6Var);
        return this;
    }

    @Override // defpackage.gg6, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.p.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.p.add(t);
    }

    @Override // defpackage.gg6
    public gg6 f() throws IOException {
        if (this.p.isEmpty() || this.q != null) {
            throw new IllegalStateException();
        }
        if (!(I() instanceof qd6)) {
            throw new IllegalStateException();
        }
        this.p.remove(r0.size() - 1);
        return this;
    }

    @Override // defpackage.gg6, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // defpackage.gg6
    public gg6 g() throws IOException {
        if (this.p.isEmpty() || this.q != null) {
            throw new IllegalStateException();
        }
        if (!(I() instanceof wd6)) {
            throw new IllegalStateException();
        }
        this.p.remove(r0.size() - 1);
        return this;
    }

    @Override // defpackage.gg6
    public gg6 i(String str) throws IOException {
        if (this.p.isEmpty() || this.q != null) {
            throw new IllegalStateException();
        }
        if (!(I() instanceof wd6)) {
            throw new IllegalStateException();
        }
        this.q = str;
        return this;
    }

    @Override // defpackage.gg6
    public gg6 m() throws IOException {
        L(vd6.a);
        return this;
    }

    @Override // defpackage.gg6
    public gg6 x(long j) throws IOException {
        L(new yd6(Long.valueOf(j)));
        return this;
    }

    @Override // defpackage.gg6
    public gg6 y(Boolean bool) throws IOException {
        if (bool == null) {
            L(vd6.a);
            return this;
        }
        L(new yd6(bool));
        return this;
    }
}
