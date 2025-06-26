package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.R$string;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ve5 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;

    public ve5(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        bi.m(!g20.a(str), "ApplicationId must be set.");
        this.b = str;
        this.a = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
    }

    public static ve5 a(Context context) throws Resources.NotFoundException {
        Objects.requireNonNull(context, "null reference");
        Resources resources = context.getResources();
        String resourcePackageName = resources.getResourcePackageName(R$string.common_google_play_services_unknown_issue);
        int identifier = resources.getIdentifier("google_app_id", "string", resourcePackageName);
        String string = identifier == 0 ? null : resources.getString(identifier);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        int identifier2 = resources.getIdentifier("google_api_key", "string", resourcePackageName);
        String string2 = identifier2 == 0 ? null : resources.getString(identifier2);
        int identifier3 = resources.getIdentifier("firebase_database_url", "string", resourcePackageName);
        String string3 = identifier3 == 0 ? null : resources.getString(identifier3);
        int identifier4 = resources.getIdentifier("ga_trackingId", "string", resourcePackageName);
        String string4 = identifier4 == 0 ? null : resources.getString(identifier4);
        int identifier5 = resources.getIdentifier("gcm_defaultSenderId", "string", resourcePackageName);
        String string5 = identifier5 == 0 ? null : resources.getString(identifier5);
        int identifier6 = resources.getIdentifier("google_storage_bucket", "string", resourcePackageName);
        String string6 = identifier6 == 0 ? null : resources.getString(identifier6);
        int identifier7 = resources.getIdentifier("project_id", "string", resourcePackageName);
        return new ve5(string, string2, string3, string4, string5, string6, identifier7 != 0 ? resources.getString(identifier7) : null);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ve5)) {
            return false;
        }
        ve5 ve5Var = (ve5) obj;
        return bi.B(this.b, ve5Var.b) && bi.B(this.a, ve5Var.a) && bi.B(this.c, ve5Var.c) && bi.B(this.d, ve5Var.d) && bi.B(this.e, ve5Var.e) && bi.B(this.f, ve5Var.f) && bi.B(this.g, ve5Var.g);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.a, this.c, this.d, this.e, this.f, this.g});
    }

    public String toString() {
        w00 w00Var = new w00(this, null);
        w00Var.a("applicationId", this.b);
        w00Var.a("apiKey", this.a);
        w00Var.a("databaseUrl", this.c);
        w00Var.a("gcmSenderId", this.e);
        w00Var.a("storageBucket", this.f);
        w00Var.a("projectId", this.g);
        return w00Var.toString();
    }
}
