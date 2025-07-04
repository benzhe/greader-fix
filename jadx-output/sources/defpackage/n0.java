package defpackage;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;

/* loaded from: classes.dex */
public class n0 {
    public static n0 d;
    public final Context a;
    public final LocationManager b;
    public final a c = new a();

    public static class a {
        public boolean a;
        public long b;
    }

    public n0(Context context, LocationManager locationManager) {
        this.a = context;
        this.b = locationManager;
    }

    public final Location a(String str) {
        try {
            if (this.b.isProviderEnabled(str)) {
                return this.b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
            return null;
        }
    }
}
