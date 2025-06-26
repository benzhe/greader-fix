package okhttp3.internal.connection;

import defpackage.im7;
import java.util.LinkedHashSet;
import java.util.Set;
import okhttp3.Route;

/* loaded from: classes2.dex */
public final class RouteDatabase {
    private final Set<Route> failedRoutes = new LinkedHashSet();

    public final synchronized void connected(Route route) {
        im7.e(route, "route");
        this.failedRoutes.remove(route);
    }

    public final synchronized void failed(Route route) {
        im7.e(route, "failedRoute");
        this.failedRoutes.add(route);
    }

    public final synchronized boolean shouldPostpone(Route route) {
        im7.e(route, "route");
        return this.failedRoutes.contains(route);
    }
}
