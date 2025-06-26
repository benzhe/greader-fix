package defpackage;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.Objects;

/* loaded from: classes.dex */
public final class tu1 implements cb3<String> {
    @Override // defpackage.mb3
    public final Object get() {
        zzr.zzkv();
        String strZzzr = zzj.zzzr();
        Objects.requireNonNull(strZzzr, "Cannot return null from a non-@Nullable @Provides method");
        return strZzzr;
    }
}
