package defpackage;

/* loaded from: classes2.dex */
public abstract class m28 {
    public int a;
    public int b;
    public int[] c;
    public float d;

    public m28() {
        e();
    }

    public float a() {
        int i;
        int i2 = this.b;
        if (i2 <= 0 || (i = this.a) <= 4) {
            return 0.01f;
        }
        if (i2 != i) {
            float f = (i / (i2 - i)) * this.d;
            if (f < 0.99f) {
                return f;
            }
        }
        return 0.99f;
    }

    public abstract int b(byte[] bArr, int i);

    public boolean c() {
        return this.b > 1024;
    }

    public void d(byte[] bArr, int i, int i2) {
        int iB = i2 == 2 ? b(bArr, i) : -1;
        if (iB >= 0) {
            this.b++;
            int[] iArr = this.c;
            if (iB >= iArr.length || 512 <= iArr[iB]) {
                return;
            }
            this.a++;
        }
    }

    public void e() {
        this.b = 0;
        this.a = 0;
    }
}
