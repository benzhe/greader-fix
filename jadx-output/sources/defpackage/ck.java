package defpackage;

import androidx.work.ListenableWorker;
import defpackage.xj;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

/* loaded from: classes.dex */
public abstract class ck {
    public UUID a;
    public dm b;
    public Set<String> c;

    public static abstract class a<B extends a, W extends ck> {
        public dm b;
        public Set<String> c = new HashSet();
        public UUID a = UUID.randomUUID();

        public a(Class<? extends ListenableWorker> cls) {
            this.b = new dm(this.a.toString(), cls.getName());
            this.c.add(cls.getName());
        }

        public final W a() {
            xj xjVar = new xj((xj.a) this);
            this.a = UUID.randomUUID();
            dm dmVar = new dm(this.b);
            this.b = dmVar;
            dmVar.a = this.a.toString();
            return xjVar;
        }
    }

    public ck(UUID uuid, dm dmVar, Set<String> set) {
        this.a = uuid;
        this.b = dmVar;
        this.c = set;
    }

    public String a() {
        return this.a.toString();
    }
}
