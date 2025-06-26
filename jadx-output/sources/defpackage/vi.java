package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class vi extends ui {
    public final SparseIntArray d;
    public final Parcel e;
    public final int f;
    public final int g;
    public final String h;
    public int i;
    public int j;
    public int k;

    public vi(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new f4(), new f4(), new f4());
    }

    @Override // defpackage.ui
    public void a() {
        int i = this.i;
        if (i >= 0) {
            int i2 = this.d.get(i);
            int iDataPosition = this.e.dataPosition();
            this.e.setDataPosition(i2);
            this.e.writeInt(iDataPosition - i2);
            this.e.setDataPosition(iDataPosition);
        }
    }

    @Override // defpackage.ui
    public ui b() {
        Parcel parcel = this.e;
        int iDataPosition = parcel.dataPosition();
        int i = this.j;
        if (i == this.f) {
            i = this.g;
        }
        return new vi(parcel, iDataPosition, i, jo.s(new StringBuilder(), this.h, "  "), this.a, this.b, this.c);
    }

    @Override // defpackage.ui
    public boolean f() {
        return this.e.readInt() != 0;
    }

    @Override // defpackage.ui
    public byte[] g() {
        int i = this.e.readInt();
        if (i < 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        this.e.readByteArray(bArr);
        return bArr;
    }

    @Override // defpackage.ui
    public CharSequence h() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.e);
    }

    @Override // defpackage.ui
    public boolean i(int i) {
        while (this.j < this.g) {
            int i2 = this.k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.e.setDataPosition(this.j);
            int i3 = this.e.readInt();
            this.k = this.e.readInt();
            this.j += i3;
        }
        return this.k == i;
    }

    @Override // defpackage.ui
    public int j() {
        return this.e.readInt();
    }

    @Override // defpackage.ui
    public <T extends Parcelable> T l() {
        return (T) this.e.readParcelable(vi.class.getClassLoader());
    }

    @Override // defpackage.ui
    public String n() {
        return this.e.readString();
    }

    @Override // defpackage.ui
    public void p(int i) {
        a();
        this.i = i;
        this.d.put(i, this.e.dataPosition());
        this.e.writeInt(0);
        this.e.writeInt(i);
    }

    @Override // defpackage.ui
    public void q(boolean z) {
        this.e.writeInt(z ? 1 : 0);
    }

    @Override // defpackage.ui
    public void r(byte[] bArr) {
        if (bArr == null) {
            this.e.writeInt(-1);
        } else {
            this.e.writeInt(bArr.length);
            this.e.writeByteArray(bArr);
        }
    }

    @Override // defpackage.ui
    public void s(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.e, 0);
    }

    @Override // defpackage.ui
    public void t(int i) {
        this.e.writeInt(i);
    }

    @Override // defpackage.ui
    public void u(Parcelable parcelable) {
        this.e.writeParcelable(parcelable, 0);
    }

    @Override // defpackage.ui
    public void v(String str) {
        this.e.writeString(str);
    }

    public vi(Parcel parcel, int i, int i2, String str, f4<String, Method> f4Var, f4<String, Method> f4Var2, f4<String, Class> f4Var3) {
        super(f4Var, f4Var2, f4Var3);
        this.d = new SparseIntArray();
        this.i = -1;
        this.j = 0;
        this.k = -1;
        this.e = parcel;
        this.f = i;
        this.g = i2;
        this.j = i;
        this.h = str;
    }
}
