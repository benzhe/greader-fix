package defpackage;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzajy;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class nl2 {
    public zzvq a;
    public zzvt b;
    public wt3 c;
    public String d;
    public zzaaz e;
    public boolean f;
    public ArrayList<String> g;
    public ArrayList<String> h;
    public zzaei i;
    public zzwc j;
    public AdManagerAdViewOptions k;
    public PublisherAdViewOptions l;
    public pt3 m;
    public zzajy o;
    public int n = 1;
    public al2 p = new al2();
    public boolean q = false;

    public final ll2 a() {
        bi.j(this.d, "ad unit must not be null");
        bi.j(this.b, "ad size must not be null");
        bi.j(this.a, "ad request must not be null");
        return new ll2(this, null);
    }
}
