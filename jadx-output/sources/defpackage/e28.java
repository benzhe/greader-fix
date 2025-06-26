package defpackage;

import defpackage.v18;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class e28 extends v18 {
    public static final e38 f = new g38();
    public static final e38 g = new z28();
    public static final e38 h = new b38();
    public static final e38 i = new d38();
    public static final e38 j = new y28();
    public static final e38 k = new x28();
    public static final e38 l = new c38();
    public static final e38 m = new h38();
    public static final e38 n = new a38();
    public static final e38 o = new f38();
    public static final e38 p = new w28();
    public v18.a a;
    public v18[] b;
    public boolean[] c = new boolean[13];
    public int d;
    public int e;

    public e28() {
        v18[] v18VarArr = new v18[13];
        this.b = v18VarArr;
        v18VarArr[0] = new g28(f);
        this.b[1] = new g28(g);
        this.b[2] = new g28(h);
        this.b[3] = new g28(i);
        this.b[4] = new g28(j);
        this.b[5] = new g28(k);
        this.b[6] = new g28(l);
        this.b[7] = new g28(m);
        this.b[8] = new g28(n);
        this.b[9] = new g28(o);
        b28 b28Var = new b28();
        v18[] v18VarArr2 = this.b;
        v18VarArr2[10] = b28Var;
        e38 e38Var = p;
        v18VarArr2[11] = new g28(e38Var, false, b28Var);
        this.b[12] = new g28(e38Var, true, b28Var);
        v18[] v18VarArr3 = this.b;
        v18 v18Var = v18VarArr3[11];
        v18 v18Var2 = v18VarArr3[12];
        b28Var.e = v18Var;
        b28Var.f = v18Var2;
        f();
    }

    @Override // defpackage.v18
    public String a() {
        if (this.d == -1) {
            b();
            if (this.d == -1) {
                this.d = 0;
            }
        }
        return this.b[this.d].a();
    }

    @Override // defpackage.v18
    public float b() {
        v18.a aVar = this.a;
        if (aVar == v18.a.FOUND_IT) {
            return 0.99f;
        }
        if (aVar == v18.a.NOT_ME) {
            return 0.01f;
        }
        int i2 = 0;
        float f2 = 0.0f;
        while (true) {
            v18[] v18VarArr = this.b;
            if (i2 >= v18VarArr.length) {
                return f2;
            }
            if (this.c[i2]) {
                float fB = v18VarArr[i2].b();
                if (f2 < fB) {
                    this.d = i2;
                    f2 = fB;
                }
            }
            i2++;
        }
    }

    @Override // defpackage.v18
    public v18.a c() {
        return this.a;
    }

    @Override // defpackage.v18
    public v18.a d(byte[] bArr, int i2, int i3) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i3);
        int i4 = i3 + i2;
        int i5 = i2;
        boolean z = false;
        while (i2 < i4) {
            byte b = bArr[i2];
            if (!((b & 128) == 0)) {
                z = true;
            } else if (e(b)) {
                if (!z || i2 <= i5) {
                    i5 = i2 + 1;
                } else {
                    byteBufferAllocate.put(bArr, i5, i2 - i5);
                    byteBufferAllocate.put((byte) 32);
                    i5 = i2 + 1;
                    z = false;
                }
            }
            i2++;
        }
        if (z && i2 > i5) {
            byteBufferAllocate.put(bArr, i5, i2 - i5);
        }
        if (byteBufferAllocate.position() != 0) {
            int i6 = 0;
            while (true) {
                v18[] v18VarArr = this.b;
                if (i6 >= v18VarArr.length) {
                    break;
                }
                if (this.c[i6]) {
                    v18.a aVarD = v18VarArr[i6].d(byteBufferAllocate.array(), 0, byteBufferAllocate.position());
                    v18.a aVar = v18.a.FOUND_IT;
                    if (aVarD == aVar) {
                        this.d = i6;
                        this.a = aVar;
                        break;
                    }
                    v18.a aVar2 = v18.a.NOT_ME;
                    if (aVarD == aVar2) {
                        this.c[i6] = false;
                        int i7 = this.e - 1;
                        this.e = i7;
                        if (i7 <= 0) {
                            this.a = aVar2;
                            break;
                        }
                    } else {
                        continue;
                    }
                }
                i6++;
            }
        }
        return this.a;
    }

    @Override // defpackage.v18
    public void f() {
        int i2 = 0;
        this.e = 0;
        while (true) {
            v18[] v18VarArr = this.b;
            if (i2 >= v18VarArr.length) {
                this.d = -1;
                this.a = v18.a.DETECTING;
                return;
            } else {
                v18VarArr[i2].f();
                this.c[i2] = true;
                this.e++;
                i2++;
            }
        }
    }
}
