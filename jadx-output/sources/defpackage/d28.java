package defpackage;

import defpackage.v18;

/* loaded from: classes2.dex */
public class d28 extends v18 {
    public v18.a a;
    public v18[] b;
    public boolean[] c = new boolean[7];
    public int d;
    public int e;

    public d28() {
        v18[] v18VarArr = new v18[7];
        this.b = v18VarArr;
        v18VarArr[0] = new h28();
        this.b[1] = new f28();
        this.b[2] = new w18();
        this.b[3] = new a28();
        this.b[4] = new x18();
        this.b[5] = new u18();
        this.b[6] = new y18();
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
        int i = 0;
        float f = 0.0f;
        while (true) {
            v18[] v18VarArr = this.b;
            if (i >= v18VarArr.length) {
                return f;
            }
            if (this.c[i]) {
                float fB = v18VarArr[i].b();
                if (f < fB) {
                    this.d = i;
                    f = fB;
                }
            }
            i++;
        }
    }

    @Override // defpackage.v18
    public v18.a c() {
        return this.a;
    }

    @Override // defpackage.v18
    public v18.a d(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        int i3 = i2 + i;
        boolean z = true;
        int i4 = 0;
        while (i < i3) {
            if ((bArr[i] & 128) != 0) {
                bArr2[i4] = bArr[i];
                i4++;
                z = true;
            } else if (z) {
                bArr2[i4] = bArr[i];
                i4++;
                z = false;
            }
            i++;
        }
        int i5 = 0;
        while (true) {
            v18[] v18VarArr = this.b;
            if (i5 >= v18VarArr.length) {
                break;
            }
            if (this.c[i5]) {
                v18.a aVarD = v18VarArr[i5].d(bArr2, 0, i4);
                v18.a aVar = v18.a.FOUND_IT;
                if (aVarD == aVar) {
                    this.d = i5;
                    this.a = aVar;
                    break;
                }
                v18.a aVar2 = v18.a.NOT_ME;
                if (aVarD == aVar2) {
                    this.c[i5] = false;
                    int i6 = this.e - 1;
                    this.e = i6;
                    if (i6 <= 0) {
                        this.a = aVar2;
                        break;
                    }
                } else {
                    continue;
                }
            }
            i5++;
        }
        return this.a;
    }

    @Override // defpackage.v18
    public void f() {
        int i = 0;
        this.e = 0;
        while (true) {
            v18[] v18VarArr = this.b;
            if (i >= v18VarArr.length) {
                this.d = -1;
                this.a = v18.a.DETECTING;
                return;
            } else {
                v18VarArr[i].f();
                this.c[i] = true;
                this.e++;
                i++;
            }
        }
    }
}
