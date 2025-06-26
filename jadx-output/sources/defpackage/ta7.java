package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.ti6;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class ta7 extends InputStream implements p37, b47 {
    public ak6 e;
    public final ik6<?> f;
    public ByteArrayInputStream g;

    public ta7(ak6 ak6Var, ik6<?> ik6Var) {
        this.e = ak6Var;
        this.f = ik6Var;
    }

    @Override // defpackage.p37
    public int a(OutputStream outputStream) throws IOException {
        ak6 ak6Var = this.e;
        if (ak6Var != null) {
            int iH = ak6Var.h();
            this.e.e(outputStream);
            this.e = null;
            return iH;
        }
        ByteArrayInputStream byteArrayInputStream = this.g;
        if (byteArrayInputStream == null) {
            return 0;
        }
        yi6 yi6Var = ua7.a;
        c50.A(byteArrayInputStream, "inputStream cannot be null!");
        c50.A(outputStream, "outputStream cannot be null!");
        byte[] bArr = new byte[RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
        long j = 0;
        while (true) {
            int i = byteArrayInputStream.read(bArr);
            if (i == -1) {
                int i2 = (int) j;
                this.g = null;
                return i2;
            }
            outputStream.write(bArr, 0, i);
            j += i;
        }
    }

    @Override // java.io.InputStream
    public int available() {
        ak6 ak6Var = this.e;
        if (ak6Var != null) {
            return ak6Var.h();
        }
        ByteArrayInputStream byteArrayInputStream = this.g;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.available();
        }
        return 0;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.e != null) {
            this.g = new ByteArrayInputStream(this.e.b());
            this.e = null;
        }
        ByteArrayInputStream byteArrayInputStream = this.g;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read();
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        ak6 ak6Var = this.e;
        if (ak6Var != null) {
            int iH = ak6Var.h();
            if (iH == 0) {
                this.e = null;
                this.g = null;
                return -1;
            }
            if (i2 >= iH) {
                Logger logger = ti6.b;
                ti6.c cVar = new ti6.c(bArr, i, iH);
                this.e.f(cVar);
                cVar.b();
                this.e = null;
                this.g = null;
                return iH;
            }
            this.g = new ByteArrayInputStream(this.e.b());
            this.e = null;
        }
        ByteArrayInputStream byteArrayInputStream = this.g;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read(bArr, i, i2);
        }
        return -1;
    }
}
