package defpackage;

import defpackage.v18;

/* loaded from: classes2.dex */
public class b28 extends v18 {
    public int a;
    public int b;
    public byte c;
    public byte d;
    public v18 e = null;
    public v18 f = null;

    public b28() {
        f();
    }

    public static boolean g(byte b) {
        int i = b & 255;
        return i == 234 || i == 237 || i == 239 || i == 243 || i == 245;
    }

    @Override // defpackage.v18
    public String a() {
        int i = this.a - this.b;
        if (i >= 5) {
            return s18.t;
        }
        if (i <= -5) {
            return s18.f;
        }
        float fB = this.e.b() - this.f.b();
        return fB > 0.01f ? s18.t : fB < -0.01f ? s18.f : i < 0 ? s18.f : s18.t;
    }

    @Override // defpackage.v18
    public float b() {
        return 0.0f;
    }

    @Override // defpackage.v18
    public v18.a c() {
        v18.a aVarC = this.e.c();
        v18.a aVar = v18.a.NOT_ME;
        return (aVarC == aVar && this.f.c() == aVar) ? aVar : v18.a.DETECTING;
    }

    @Override // defpackage.v18
    public v18.a d(byte[] bArr, int i, int i2) {
        v18.a aVarC = c();
        v18.a aVar = v18.a.NOT_ME;
        if (aVarC == aVar) {
            return aVar;
        }
        int i3 = i2 + i;
        while (i < i3) {
            byte b = bArr[i];
            if (b == 32) {
                if (this.d != 32) {
                    if (g(this.c)) {
                        this.a++;
                    } else {
                        int i4 = this.c & 255;
                        if (i4 == 235 || i4 == 238 || i4 == 240 || i4 == 244) {
                            this.b++;
                        }
                    }
                }
            } else if (this.d == 32 && g(this.c) && b != 32) {
                this.b++;
            }
            this.d = this.c;
            this.c = b;
            i++;
        }
        return v18.a.DETECTING;
    }

    @Override // defpackage.v18
    public void f() {
        this.a = 0;
        this.b = 0;
        this.c = (byte) 32;
        this.d = (byte) 32;
    }
}
