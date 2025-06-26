package defpackage;

import defpackage.vj5;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class wj5 implements vj5.d {
    public final /* synthetic */ byte[] a;
    public final /* synthetic */ int[] b;

    public wj5(xj5 xj5Var, byte[] bArr, int[] iArr) {
        this.a = bArr;
        this.b = iArr;
    }

    @Override // vj5.d
    public void a(InputStream inputStream, int i) throws IOException {
        try {
            inputStream.read(this.a, this.b[0], i);
            int[] iArr = this.b;
            iArr[0] = iArr[0] + i;
        } finally {
            inputStream.close();
        }
    }
}
