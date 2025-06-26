package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.j20;
import defpackage.w00;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class ConnectionResult extends AbstractSafeParcelable {
    public final int e;
    public final int f;
    public final PendingIntent g;
    public final String h;
    public static final ConnectionResult i = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new j20();

    public ConnectionResult(int i2) {
        this.e = 1;
        this.f = i2;
        this.g = null;
        this.h = null;
    }

    public static String C(int i2) {
        if (i2 == 99) {
            return "UNFINISHED";
        }
        if (i2 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i2) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i2) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    default:
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("UNKNOWN_ERROR_CODE(");
                        sb.append(i2);
                        sb.append(")");
                        return sb.toString();
                }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f == connectionResult.f && bi.B(this.g, connectionResult.g) && bi.B(this.h, connectionResult.h);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f), this.g, this.h});
    }

    public final boolean n() {
        return this.f == 0;
    }

    public final String toString() {
        w00 w00Var = new w00(this, null);
        w00Var.a("statusCode", C(this.f));
        w00Var.a("resolution", this.g);
        w00Var.a("message", this.h);
        return w00Var.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iM0 = bi.m0(parcel, 20293);
        int i3 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i3);
        int i4 = this.f;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(i4);
        bi.h0(parcel, 3, this.g, i2, false);
        bi.i0(parcel, 4, this.h, false);
        bi.t0(parcel, iM0);
    }

    public ConnectionResult(int i2, int i3, PendingIntent pendingIntent, String str) {
        this.e = i2;
        this.f = i3;
        this.g = pendingIntent;
        this.h = str;
    }

    public ConnectionResult(int i2, PendingIntent pendingIntent) {
        this.e = 1;
        this.f = i2;
        this.g = pendingIntent;
        this.h = null;
    }
}
