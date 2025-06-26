package defpackage;

import defpackage.v18;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class y18 extends v18 {
    public static final u38 e = new m38();
    public v18.a b;
    public j38 a = new j38(e);
    public p28 c = new p28();
    public byte[] d = new byte[2];

    public y18() {
        f();
    }

    @Override // defpackage.v18
    public String a() {
        return s18.k;
    }

    @Override // defpackage.v18
    public float b() {
        return this.c.a();
    }

    @Override // defpackage.v18
    public v18.a c() {
        return this.b;
    }

    @Override // defpackage.v18
    public v18.a d(byte[] bArr, int i, int i2) {
        v18.a aVar = v18.a.FOUND_IT;
        int i3 = i2 + i;
        int i4 = i;
        while (true) {
            if (i4 >= i3) {
                break;
            }
            int iA = this.a.a(bArr[i4]);
            if (iA == 1) {
                this.b = v18.a.NOT_ME;
                break;
            }
            if (iA == 2) {
                this.b = aVar;
                break;
            }
            if (iA == 0) {
                int i5 = this.a.c;
                if (i4 == i) {
                    byte[] bArr2 = this.d;
                    bArr2[1] = bArr[i];
                    this.c.d(bArr2, 0, i5);
                } else {
                    this.c.d(bArr, i4 - 1, i5);
                }
            }
            i4++;
        }
        this.d[0] = bArr[i3 - 1];
        if (this.b == v18.a.DETECTING && this.c.c() && b() > 0.95f) {
            this.b = aVar;
        }
        return this.b;
    }

    @Override // defpackage.v18
    public void f() {
        this.a.b = 0;
        this.b = v18.a.DETECTING;
        this.c.e();
        Arrays.fill(this.d, (byte) 0);
    }
}
