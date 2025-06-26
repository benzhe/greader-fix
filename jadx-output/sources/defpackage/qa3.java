package defpackage;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;

/* loaded from: classes.dex */
public class qa3 implements c81, Closeable, Iterator<d91> {
    public static final d91 k = new ra3("eof ");
    public f41 e;
    public ov0 f;
    public d91 g = null;
    public long h = 0;
    public long i = 0;
    public List<d91> j = new ArrayList();

    static {
        va3.b(qa3.class);
    }

    public void close() throws IOException {
        Objects.requireNonNull(this.f);
    }

    public void e(ov0 ov0Var, long j, f41 f41Var) throws IOException {
        this.f = ov0Var;
        this.h = ov0Var.a();
        ov0Var.b(ov0Var.a() + j);
        this.i = ov0Var.a();
        this.e = f41Var;
    }

    public final List<d91> f() {
        return (this.f == null || this.g == k) ? this.j : new ta3(this.j, this);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        d91 d91Var = this.g;
        if (d91Var == k) {
            return false;
        }
        if (d91Var != null) {
            return true;
        }
        try {
            this.g = (d91) next();
            return true;
        } catch (NoSuchElementException unused) {
            this.g = k;
            return false;
        }
    }

    @Override // java.util.Iterator
    public d91 next() {
        d91 d91VarA;
        d91 d91Var = this.g;
        if (d91Var != null && d91Var != k) {
            this.g = null;
            return d91Var;
        }
        ov0 ov0Var = this.f;
        if (ov0Var == null || this.h >= this.i) {
            this.g = k;
            throw new NoSuchElementException();
        }
        try {
            synchronized (ov0Var) {
                this.f.b(this.h);
                d91VarA = ((h21) this.e).a(this.f, this);
                this.h = this.f.a();
            }
            return d91VarA;
        } catch (EOFException unused) {
            throw new NoSuchElementException();
        } catch (IOException unused2) {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i = 0; i < this.j.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.j.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
