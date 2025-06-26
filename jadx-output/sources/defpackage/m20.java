package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import org.apache.commons.lang3.CharEncoding;

/* loaded from: classes.dex */
public abstract class m20 extends c24 implements q10 {
    public static final /* synthetic */ int f = 0;
    public int e;

    public m20(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData");
        bi.b(bArr.length == 25);
        this.e = Arrays.hashCode(bArr);
    }

    public static byte[] l0(String str) {
        try {
            return str.getBytes(CharEncoding.ISO_8859_1);
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    @Override // defpackage.c24
    public final boolean Z(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            x20 x20VarB = b();
            parcel2.writeNoException();
            e24.b(parcel2, x20VarB);
            return true;
        }
        if (i != 2) {
            return false;
        }
        int i3 = this.e;
        parcel2.writeNoException();
        parcel2.writeInt(i3);
        return true;
    }

    @Override // defpackage.q10
    public final x20 b() {
        return new y20(g0());
    }

    @Override // defpackage.q10
    public final int c() {
        return this.e;
    }

    public boolean equals(Object obj) {
        x20 x20VarB;
        if (obj != null && (obj instanceof q10)) {
            try {
                q10 q10Var = (q10) obj;
                if (q10Var.c() == this.e && (x20VarB = q10Var.b()) != null) {
                    return Arrays.equals(g0(), (byte[]) y20.l0(x20VarB));
                }
                return false;
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            }
        }
        return false;
    }

    public abstract byte[] g0();

    public int hashCode() {
        return this.e;
    }
}
