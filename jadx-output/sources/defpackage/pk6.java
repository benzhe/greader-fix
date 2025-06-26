package defpackage;

import defpackage.qi6;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class pk6 extends qi6 {
    public static final int[] m = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    public final int h;
    public final qi6 i;
    public final qi6 j;
    public final int k;
    public final int l;

    public class a extends qi6.b {
        public final c e;
        public qi6.f f = a();

        public a() {
            this.e = new c(pk6.this, null);
        }

        public final qi6.f a() {
            if (!this.e.hasNext()) {
                return null;
            }
            qi6.g next = this.e.next();
            Objects.requireNonNull(next);
            return new qi6.a();
        }

        @Override // qi6.f
        public byte b() {
            qi6.f fVar = this.f;
            if (fVar == null) {
                throw new NoSuchElementException();
            }
            byte b = fVar.b();
            if (!this.f.hasNext()) {
                this.f = a();
            }
            return b;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f != null;
        }
    }

    public static class b {
        public final ArrayDeque<qi6> a = new ArrayDeque<>();

        public b(a aVar) {
        }

        public final void a(qi6 qi6Var) {
            if (!qi6Var.v()) {
                if (!(qi6Var instanceof pk6)) {
                    StringBuilder sbZ = jo.z("Has a new type of ByteString been created? Found ");
                    sbZ.append(qi6Var.getClass());
                    throw new IllegalArgumentException(sbZ.toString());
                }
                pk6 pk6Var = (pk6) qi6Var;
                a(pk6Var.i);
                a(pk6Var.j);
                return;
            }
            int iBinarySearch = Arrays.binarySearch(pk6.m, qi6Var.size());
            if (iBinarySearch < 0) {
                iBinarySearch = (-(iBinarySearch + 1)) - 1;
            }
            int iN = pk6.N(iBinarySearch + 1);
            if (this.a.isEmpty() || this.a.peek().size() >= iN) {
                this.a.push(qi6Var);
                return;
            }
            int iN2 = pk6.N(iBinarySearch);
            qi6 qi6VarPop = this.a.pop();
            while (!this.a.isEmpty() && this.a.peek().size() < iN2) {
                qi6VarPop = new pk6(this.a.pop(), qi6VarPop);
            }
            pk6 pk6Var2 = new pk6(qi6VarPop, qi6Var);
            while (!this.a.isEmpty()) {
                int iBinarySearch2 = Arrays.binarySearch(pk6.m, pk6Var2.h);
                if (iBinarySearch2 < 0) {
                    iBinarySearch2 = (-(iBinarySearch2 + 1)) - 1;
                }
                if (this.a.peek().size() >= pk6.N(iBinarySearch2 + 1)) {
                    break;
                } else {
                    pk6Var2 = new pk6(this.a.pop(), pk6Var2);
                }
            }
            this.a.push(pk6Var2);
        }
    }

    public static final class c implements Iterator<qi6.g> {
        public final ArrayDeque<pk6> e;
        public qi6.g f;

        public c(qi6 qi6Var, a aVar) {
            if (!(qi6Var instanceof pk6)) {
                this.e = null;
                this.f = (qi6.g) qi6Var;
                return;
            }
            pk6 pk6Var = (pk6) qi6Var;
            ArrayDeque<pk6> arrayDeque = new ArrayDeque<>(pk6Var.l);
            this.e = arrayDeque;
            arrayDeque.push(pk6Var);
            qi6 qi6Var2 = pk6Var.i;
            while (qi6Var2 instanceof pk6) {
                pk6 pk6Var2 = (pk6) qi6Var2;
                this.e.push(pk6Var2);
                qi6Var2 = pk6Var2.i;
            }
            this.f = (qi6.g) qi6Var2;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public qi6.g next() {
            qi6.g gVar;
            qi6.g gVar2 = this.f;
            if (gVar2 == null) {
                throw new NoSuchElementException();
            }
            do {
                ArrayDeque<pk6> arrayDeque = this.e;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    gVar = null;
                    break;
                }
                qi6 qi6Var = this.e.pop().j;
                while (qi6Var instanceof pk6) {
                    pk6 pk6Var = (pk6) qi6Var;
                    this.e.push(pk6Var);
                    qi6Var = pk6Var.i;
                }
                gVar = (qi6.g) qi6Var;
            } while (gVar.isEmpty());
            this.f = gVar;
            return gVar2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public pk6(qi6 qi6Var, qi6 qi6Var2) {
        this.i = qi6Var;
        this.j = qi6Var2;
        int size = qi6Var.size();
        this.k = size;
        this.h = qi6Var2.size() + size;
        this.l = Math.max(qi6Var.s(), qi6Var2.s()) + 1;
    }

    public static qi6 M(qi6 qi6Var, qi6 qi6Var2) {
        int size = qi6Var.size();
        int size2 = qi6Var2.size();
        byte[] bArr = new byte[size + size2];
        qi6Var.p(bArr, 0, 0, size);
        qi6Var2.p(bArr, 0, size, size2);
        return new qi6.h(bArr);
    }

    public static int N(int i) {
        int[] iArr = m;
        if (i >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    @Override // defpackage.qi6
    public ri6 A() {
        return ri6.f(new d());
    }

    @Override // defpackage.qi6
    public int B(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.k;
        if (i4 <= i5) {
            return this.i.B(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.j.B(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.j.B(this.i.B(i, i2, i6), 0, i3 - i6);
    }

    @Override // defpackage.qi6
    public int C(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.k;
        if (i4 <= i5) {
            return this.i.C(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.j.C(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.j.C(this.i.C(i, i2, i6), 0, i3 - i6);
    }

    @Override // defpackage.qi6
    public qi6 G(int i, int i2) {
        int iL = qi6.l(i, i2, this.h);
        if (iL == 0) {
            return qi6.f;
        }
        if (iL == this.h) {
            return this;
        }
        int i3 = this.k;
        if (i2 <= i3) {
            return this.i.G(i, i2);
        }
        if (i >= i3) {
            return this.j.G(i - i3, i2 - i3);
        }
        qi6 qi6Var = this.i;
        return new pk6(qi6Var.G(i, qi6Var.size()), this.j.G(0, i2 - this.k));
    }

    @Override // defpackage.qi6
    public String J(Charset charset) {
        return new String(H(), charset);
    }

    @Override // defpackage.qi6
    public void K(pi6 pi6Var) throws IOException {
        this.i.K(pi6Var);
        this.j.K(pi6Var);
    }

    @Override // defpackage.qi6
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof qi6)) {
            return false;
        }
        qi6 qi6Var = (qi6) obj;
        if (this.h != qi6Var.size()) {
            return false;
        }
        if (this.h == 0) {
            return true;
        }
        int i = this.e;
        int i2 = qi6Var.e;
        if (i != 0 && i2 != 0 && i != i2) {
            return false;
        }
        c cVar = new c(this, null);
        qi6.g gVar = (qi6.g) cVar.next();
        c cVar2 = new c(qi6Var, null);
        qi6.g gVar2 = (qi6.g) cVar2.next();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int size = gVar.size() - i3;
            int size2 = gVar2.size() - i4;
            int iMin = Math.min(size, size2);
            if (!(i3 == 0 ? gVar.M(gVar2, i4, iMin) : gVar2.M(gVar, i3, iMin))) {
                return false;
            }
            i5 += iMin;
            int i6 = this.h;
            if (i5 >= i6) {
                if (i5 == i6) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == size) {
                gVar = (qi6.g) cVar.next();
                i3 = 0;
            } else {
                i3 += iMin;
                gVar = gVar;
            }
            if (iMin == size2) {
                gVar2 = (qi6.g) cVar2.next();
                i4 = 0;
            } else {
                i4 += iMin;
            }
        }
    }

    @Override // defpackage.qi6
    public byte h(int i) {
        qi6.j(i, this.h);
        return u(i);
    }

    @Override // defpackage.qi6, java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new a();
    }

    @Override // defpackage.qi6
    public void r(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i3;
        int i5 = this.k;
        if (i4 <= i5) {
            this.i.r(bArr, i, i2, i3);
        } else {
            if (i >= i5) {
                this.j.r(bArr, i - i5, i2, i3);
                return;
            }
            int i6 = i5 - i;
            this.i.r(bArr, i, i2, i6);
            this.j.r(bArr, 0, i2 + i6, i3 - i6);
        }
    }

    @Override // defpackage.qi6
    public int s() {
        return this.l;
    }

    @Override // defpackage.qi6
    public int size() {
        return this.h;
    }

    @Override // defpackage.qi6
    public byte u(int i) {
        int i2 = this.k;
        return i < i2 ? this.i.u(i) : this.j.u(i - i2);
    }

    @Override // defpackage.qi6
    public boolean v() {
        return this.h >= N(this.l);
    }

    @Override // defpackage.qi6
    public boolean y() {
        int iC = this.i.C(0, 0, this.k);
        qi6 qi6Var = this.j;
        return qi6Var.C(iC, 0, qi6Var.size()) == 0;
    }

    @Override // defpackage.qi6
    /* renamed from: z */
    public qi6.f iterator() {
        return new a();
    }

    public class d extends InputStream {
        public c e;
        public qi6.g f;
        public int g;
        public int h;
        public int i;
        public int j;

        public d() {
            b();
        }

        public final void a() {
            if (this.f != null) {
                int i = this.h;
                int i2 = this.g;
                if (i == i2) {
                    this.i += i2;
                    this.h = 0;
                    if (!this.e.hasNext()) {
                        this.f = null;
                        this.g = 0;
                    } else {
                        qi6.g next = this.e.next();
                        this.f = next;
                        this.g = next.size();
                    }
                }
            }
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return pk6.this.h - (this.i + this.h);
        }

        public final void b() {
            c cVar = new c(pk6.this, null);
            this.e = cVar;
            qi6.g next = cVar.next();
            this.f = next;
            this.g = next.size();
            this.h = 0;
            this.i = 0;
        }

        public final int c(byte[] bArr, int i, int i2) {
            int i3 = i2;
            while (i3 > 0) {
                a();
                if (this.f == null) {
                    break;
                }
                int iMin = Math.min(this.g - this.h, i3);
                if (bArr != null) {
                    this.f.p(bArr, this.h, i, iMin);
                    i += iMin;
                }
                this.h += iMin;
                i3 -= iMin;
            }
            return i2 - i3;
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            this.j = this.i + this.h;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            Objects.requireNonNull(bArr);
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            int iC = c(bArr, i, i2);
            if (iC != 0) {
                return iC;
            }
            if (i2 <= 0) {
                if (pk6.this.h - (this.i + this.h) != 0) {
                    return iC;
                }
            }
            return -1;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            b();
            c(null, 0, this.j);
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            if (j < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (j > 2147483647L) {
                j = 2147483647L;
            }
            return c(null, 0, (int) j);
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            a();
            qi6.g gVar = this.f;
            if (gVar == null) {
                return -1;
            }
            int i = this.h;
            this.h = i + 1;
            return gVar.h(i) & 255;
        }
    }
}
