package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.g00;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

@KeepName
/* loaded from: classes.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new g00();
    public final int e;
    public final String[] f;
    public Bundle g;
    public final CursorWindow[] h;
    public final int i;
    public final Bundle j;
    public int[] k;
    public boolean l = false;
    public boolean m = true;

    static {
        Objects.requireNonNull(new String[0], "null reference");
        new ArrayList();
        new HashMap();
    }

    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.e = i;
        this.f = strArr;
        this.h = cursorWindowArr;
        this.i = i2;
        this.j = bundle;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.l) {
                this.l = true;
                int i = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.h;
                    if (i >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[i].close();
                    i++;
                }
            }
        }
    }

    public final void finalize() throws Throwable {
        boolean z;
        try {
            if (this.m && this.h.length > 0) {
                synchronized (this) {
                    z = this.l;
                }
                if (!z) {
                    close();
                    String string = toString();
                    StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 178);
                    sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                    sb.append(string);
                    sb.append(")");
                    Log.e("DataBuffer", sb.toString());
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.j0(parcel, 1, this.f, false);
        bi.l0(parcel, 2, this.h, i, false);
        int i2 = this.i;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i2);
        bi.c0(parcel, 4, this.j, false);
        int i3 = this.e;
        bi.r0(parcel, 1000, 4);
        parcel.writeInt(i3);
        bi.t0(parcel, iM0);
        if ((i & 1) != 0) {
            close();
        }
    }
}
