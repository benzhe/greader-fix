package androidx.work;

import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.Keep;
import defpackage.ek;
import defpackage.ie5;
import defpackage.jo;
import defpackage.sj;
import defpackage.xm;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class ListenableWorker {
    public Context e;
    public WorkerParameters f;
    public volatile boolean g;
    public boolean h;

    @Keep
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        this.e = context;
        this.f = workerParameters;
    }

    public final Context getApplicationContext() {
        return this.e;
    }

    public Executor getBackgroundExecutor() {
        return this.f.f;
    }

    public final UUID getId() {
        return this.f.a;
    }

    public final sj getInputData() {
        return this.f.b;
    }

    public final Network getNetwork() {
        return this.f.d.c;
    }

    public final int getRunAttemptCount() {
        return this.f.e;
    }

    public final Set<String> getTags() {
        return this.f.c;
    }

    public xm getTaskExecutor() {
        return this.f.g;
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.f.d.a;
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.f.d.b;
    }

    public ek getWorkerFactory() {
        return this.f.h;
    }

    public final boolean isStopped() {
        return this.g;
    }

    public final boolean isUsed() {
        return this.h;
    }

    public void onStopped() {
    }

    public final void setUsed() {
        this.h = true;
    }

    public abstract ie5<a> startWork();

    public final void stop() {
        this.g = true;
        onStopped();
    }

    public static abstract class a {

        /* renamed from: androidx.work.ListenableWorker$a$a, reason: collision with other inner class name */
        public static final class C0002a extends a {
            public final sj a = sj.c;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0002a.class != obj.getClass()) {
                    return false;
                }
                return this.a.equals(((C0002a) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode() + (C0002a.class.getName().hashCode() * 31);
            }

            public String toString() {
                StringBuilder sbZ = jo.z("Failure {mOutputData=");
                sbZ.append(this.a);
                sbZ.append('}');
                return sbZ.toString();
            }
        }

        public static final class b extends a {
            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && b.class == obj.getClass();
            }

            public int hashCode() {
                return b.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }

        public static final class c extends a {
            public final sj a;

            public c() {
                this.a = sj.c;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || c.class != obj.getClass()) {
                    return false;
                }
                return this.a.equals(((c) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode() + (c.class.getName().hashCode() * 31);
            }

            public String toString() {
                StringBuilder sbZ = jo.z("Success {mOutputData=");
                sbZ.append(this.a);
                sbZ.append('}');
                return sbZ.toString();
            }

            public c(sj sjVar) {
                this.a = sjVar;
            }
        }
    }
}
