package androidx.work;

import android.net.Network;
import android.net.Uri;
import defpackage.ek;
import defpackage.sj;
import defpackage.xm;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class WorkerParameters {
    public UUID a;
    public sj b;
    public Set<String> c;
    public a d;
    public int e;
    public Executor f;
    public xm g;
    public ek h;

    public static class a {
        public List<String> a = Collections.emptyList();
        public List<Uri> b = Collections.emptyList();
        public Network c;
    }

    public WorkerParameters(UUID uuid, sj sjVar, Collection<String> collection, a aVar, int i, Executor executor, xm xmVar, ek ekVar) {
        this.a = uuid;
        this.b = sjVar;
        this.c = new HashSet(collection);
        this.d = aVar;
        this.e = i;
        this.f = executor;
        this.g = xmVar;
        this.h = ekVar;
    }
}
