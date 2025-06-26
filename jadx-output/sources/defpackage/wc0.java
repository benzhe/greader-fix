package defpackage;

import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.Map;

/* loaded from: classes.dex */
public final class wc0 implements InitializationStatus {
    public final Map<String, AdapterStatus> a;

    public wc0(Map<String, AdapterStatus> map) {
        this.a = map;
    }

    @Override // com.google.android.gms.ads.initialization.InitializationStatus
    public final Map<String, AdapterStatus> getAdapterStatusMap() {
        return this.a;
    }
}
