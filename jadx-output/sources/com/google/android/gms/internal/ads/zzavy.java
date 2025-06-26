package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.co0;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class zzavy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzavy> CREATOR = new co0();
    public final String e;
    public final int f;

    public zzavy(String str, int i) {
        this.e = str;
        this.f = i;
    }

    public static zzavy n(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzavy(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzavy)) {
            zzavy zzavyVar = (zzavy) obj;
            if (bi.B(this.e, zzavyVar.e) && bi.B(Integer.valueOf(this.f), Integer.valueOf(zzavyVar.f))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.e, Integer.valueOf(this.f)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 2, this.e, false);
        int i2 = this.f;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i2);
        bi.t0(parcel, iM0);
    }
}
