package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzy;
import java.util.Objects;

/* loaded from: classes.dex */
public final class sy4 {
    public final Context a;
    public String b;
    public String c;
    public String d;
    public Boolean e;
    public long f;
    public zzy g;
    public boolean h;
    public final Long i;
    public String j;

    public sy4(Context context, zzy zzyVar, Long l) {
        this.h = true;
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null reference");
        this.a = applicationContext;
        this.i = l;
        if (zzyVar != null) {
            this.g = zzyVar;
            this.b = zzyVar.j;
            this.c = zzyVar.i;
            this.d = zzyVar.h;
            this.h = zzyVar.g;
            this.f = zzyVar.f;
            this.j = zzyVar.l;
            Bundle bundle = zzyVar.k;
            if (bundle != null) {
                this.e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
