package defpackage;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Queue;

/* loaded from: classes2.dex */
public class c67 extends g57 {
    public int e;
    public final Queue<n87> f = new ArrayDeque();

    public class a extends c {
        public a(c67 c67Var) {
            super(null);
        }

        @Override // c67.c
        public int a(n87 n87Var, int i) {
            return n87Var.readUnsignedByte();
        }
    }

    public class b extends c {
        public int c;
        public final /* synthetic */ int d;
        public final /* synthetic */ byte[] e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c67 c67Var, int i, byte[] bArr) {
            super(null);
            this.d = i;
            this.e = bArr;
            this.c = i;
        }

        @Override // c67.c
        public int a(n87 n87Var, int i) {
            n87Var.W(this.e, this.c, i);
            this.c += i;
            return 0;
        }
    }

    public static abstract class c {
        public int a;
        public IOException b;

        public c(a aVar) {
        }

        public abstract int a(n87 n87Var, int i) throws IOException;
    }

    @Override // defpackage.n87
    public void W(byte[] bArr, int i, int i2) {
        e(new b(this, i, bArr), i2);
    }

    public void b(n87 n87Var) {
        if (!(n87Var instanceof c67)) {
            this.f.add(n87Var);
            this.e = n87Var.d() + this.e;
            return;
        }
        c67 c67Var = (c67) n87Var;
        while (!c67Var.f.isEmpty()) {
            this.f.add(c67Var.f.remove());
        }
        this.e += c67Var.e;
        c67Var.e = 0;
        c67Var.close();
    }

    public final void c() {
        if (this.f.peek().d() == 0) {
            this.f.remove().close();
        }
    }

    @Override // defpackage.g57, defpackage.n87, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        while (!this.f.isEmpty()) {
            this.f.remove().close();
        }
    }

    @Override // defpackage.n87
    public int d() {
        return this.e;
    }

    public final void e(c cVar, int i) {
        if (this.e < i) {
            throw new IndexOutOfBoundsException();
        }
        if (!this.f.isEmpty()) {
            c();
        }
        while (i > 0 && !this.f.isEmpty()) {
            n87 n87VarPeek = this.f.peek();
            int iMin = Math.min(i, n87VarPeek.d());
            try {
                cVar.a = cVar.a(n87VarPeek, iMin);
            } catch (IOException e) {
                cVar.b = e;
            }
            if (cVar.b != null) {
                return;
            }
            i -= iMin;
            this.e -= iMin;
            c();
        }
        if (i > 0) {
            throw new AssertionError("Failed executing read operation");
        }
    }

    @Override // defpackage.n87
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public c67 A(int i) {
        if (d() < i) {
            throw new IndexOutOfBoundsException();
        }
        this.e -= i;
        c67 c67Var = new c67();
        while (i > 0) {
            n87 n87VarPeek = this.f.peek();
            if (n87VarPeek.d() > i) {
                c67Var.b(n87VarPeek.A(i));
                i = 0;
            } else {
                c67Var.b(this.f.poll());
                i -= n87VarPeek.d();
            }
        }
        return c67Var;
    }

    @Override // defpackage.n87
    public int readUnsignedByte() {
        a aVar = new a(this);
        e(aVar, 1);
        return aVar.a;
    }
}
