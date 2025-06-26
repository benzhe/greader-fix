package defpackage;

import defpackage.v18;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class w18 extends v18 {
    public static final u38 f = new k38();
    public v18.a b;
    public j38 a = new j38(f);
    public i28 c = new i28();
    public n28 d = new n28();
    public byte[] e = new byte[2];

    public w18() {
        f();
    }

    @Override // defpackage.v18
    public String a() {
        return s18.i;
    }

    @Override // defpackage.v18
    public float b() {
        return Math.max(this.c.a(), this.d.a());
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
                    byte[] bArr2 = this.e;
                    bArr2[1] = bArr[i];
                    this.c.c(bArr2, 0, i5);
                    this.d.d(this.e, 0, i5);
                } else {
                    int i6 = i4 - 1;
                    this.c.c(bArr, i6, i5);
                    this.d.d(bArr, i6, i5);
                }
            }
            i4++;
        }
        this.e[0] = bArr[i3 - 1];
        if (this.b == v18.a.DETECTING) {
            if ((this.c.b > 100) && b() > 0.95f) {
                this.b = aVar;
            }
        }
        return this.b;
    }

    @Override // defpackage.v18
    public void f() {
        this.a.b = 0;
        this.b = v18.a.DETECTING;
        this.c.d();
        this.d.e();
        Arrays.fill(this.e, (byte) 0);
    }
}
