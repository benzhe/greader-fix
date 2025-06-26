package androidx.media;

import android.app.Service;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import defpackage.f4;
import defpackage.ge;
import defpackage.he;
import defpackage.ie;
import defpackage.je;
import defpackage.jo;
import defpackage.ke;
import defpackage.le;
import defpackage.me;
import defpackage.ne;
import defpackage.oe;
import defpackage.pe;
import defpackage.qe;
import defpackage.re;
import defpackage.s9;
import defpackage.se;
import defpackage.te;
import defpackage.ue;
import defpackage.ve;
import defpackage.ye;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {
    public static final boolean h = Log.isLoggable("MBServiceCompat", 3);
    public b e;
    public final f4<IBinder, a> f = new f4<>();
    public final k g = new k();

    public class a implements IBinder.DeathRecipient {
        public final String a;
        public final i b;
        public final HashMap<String, List<s9<IBinder, Bundle>>> c = new HashMap<>();

        /* renamed from: androidx.media.MediaBrowserServiceCompat$a$a, reason: collision with other inner class name */
        public class RunnableC0001a implements Runnable {
            public RunnableC0001a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                MediaBrowserServiceCompat.this.f.remove(((j) aVar.b).a());
            }
        }

        public a(String str, int i, int i2, Bundle bundle, i iVar) {
            this.a = str;
            if (Build.VERSION.SDK_INT >= 28) {
                new ye(str, i, i2);
            }
            this.b = iVar;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.g.post(new RunnableC0001a());
        }
    }

    public interface b {
        void onCreate();
    }

    public class c implements b, se {
        public final List<Bundle> a = new ArrayList();
        public Object b;
        public Messenger c;

        public class a extends g<List<MediaBrowserCompat.MediaItem>> {
            public final /* synthetic */ re e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(c cVar, Object obj, re reVar) {
                super(obj);
                this.e = reVar;
            }

            @Override // androidx.media.MediaBrowserServiceCompat.g
            public void c(List<MediaBrowserCompat.MediaItem> list) {
                ArrayList arrayList;
                List<MediaBrowserCompat.MediaItem> list2 = list;
                if (list2 != null) {
                    arrayList = new ArrayList();
                    for (MediaBrowserCompat.MediaItem mediaItem : list2) {
                        Parcel parcelObtain = Parcel.obtain();
                        mediaItem.writeToParcel(parcelObtain, 0);
                        arrayList.add(parcelObtain);
                    }
                } else {
                    arrayList = null;
                }
                this.e.a(arrayList);
            }
        }

        public c() {
        }

        @Override // defpackage.se
        public void b(String str, re<List<Parcel>> reVar) {
            MediaBrowserServiceCompat.this.c(str, new a(this, str, reVar));
        }

        @Override // defpackage.se
        public pe d(String str, int i, Bundle bundle) {
            if (bundle != null && bundle.getInt("extra_client_version", 0) != 0) {
                bundle.remove("extra_client_version");
                this.c = new Messenger(MediaBrowserServiceCompat.this.g);
                Bundle bundle2 = new Bundle();
                bundle2.putInt("extra_service_version", 2);
                bundle2.putBinder("extra_messenger", this.c.getBinder());
                Objects.requireNonNull(MediaBrowserServiceCompat.this);
                this.a.add(bundle2);
            }
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            new HashMap();
            if (Build.VERSION.SDK_INT >= 28) {
                new ye(str, -1, i);
            }
            Objects.requireNonNull(mediaBrowserServiceCompat);
            MediaBrowserServiceCompat.this.b(str, i, bundle);
            Objects.requireNonNull(MediaBrowserServiceCompat.this);
            return null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.b
        public void onCreate() {
            qe qeVar = new qe(MediaBrowserServiceCompat.this, this);
            this.b = qeVar;
            qeVar.onCreate();
        }
    }

    public class d extends c implements ue {

        public class a extends g<MediaBrowserCompat.MediaItem> {
            public final /* synthetic */ re e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, Object obj, re reVar) {
                super(obj);
                this.e = reVar;
            }

            @Override // androidx.media.MediaBrowserServiceCompat.g
            public void c(MediaBrowserCompat.MediaItem mediaItem) {
                MediaBrowserCompat.MediaItem mediaItem2 = mediaItem;
                if (mediaItem2 == null) {
                    this.e.a(null);
                    return;
                }
                Parcel parcelObtain = Parcel.obtain();
                mediaItem2.writeToParcel(parcelObtain, 0);
                this.e.a(parcelObtain);
            }
        }

        public d() {
            super();
        }

        @Override // defpackage.ue
        public void a(String str, re<Parcel> reVar) {
            MediaBrowserServiceCompat.this.e(new a(this, str, reVar));
        }

        @Override // androidx.media.MediaBrowserServiceCompat.c, androidx.media.MediaBrowserServiceCompat.b
        public void onCreate() {
            te teVar = new te(MediaBrowserServiceCompat.this, this);
            this.b = teVar;
            teVar.onCreate();
        }
    }

    public class e extends d implements ve.c {

        public class a extends g<List<MediaBrowserCompat.MediaItem>> {
            public final /* synthetic */ ve.b e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(e eVar, Object obj, ve.b bVar) {
                super(obj);
                this.e = bVar;
            }

            @Override // androidx.media.MediaBrowserServiceCompat.g
            public void c(List<MediaBrowserCompat.MediaItem> list) throws IllegalAccessException, IllegalArgumentException {
                ArrayList<Parcel> arrayList;
                List<MediaBrowserCompat.MediaItem> list2 = list;
                ArrayList arrayList2 = null;
                if (list2 != null) {
                    arrayList = new ArrayList();
                    for (MediaBrowserCompat.MediaItem mediaItem : list2) {
                        Parcel parcelObtain = Parcel.obtain();
                        mediaItem.writeToParcel(parcelObtain, 0);
                        arrayList.add(parcelObtain);
                    }
                } else {
                    arrayList = null;
                }
                ve.b bVar = this.e;
                int i = this.d;
                Objects.requireNonNull(bVar);
                try {
                    ve.a.setInt(bVar.a, i);
                } catch (IllegalAccessException e) {
                    Log.w("MBSCompatApi26", e);
                }
                MediaBrowserService.Result result = bVar.a;
                if (arrayList != null) {
                    arrayList2 = new ArrayList();
                    for (Parcel parcel : arrayList) {
                        parcel.setDataPosition(0);
                        arrayList2.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                        parcel.recycle();
                    }
                }
                result.sendResult(arrayList2);
            }
        }

        public e() {
            super();
        }

        @Override // ve.c
        public void c(String str, ve.b bVar, Bundle bundle) {
            MediaBrowserServiceCompat.this.d(str, new a(this, str, bVar));
        }

        @Override // androidx.media.MediaBrowserServiceCompat.d, androidx.media.MediaBrowserServiceCompat.c, androidx.media.MediaBrowserServiceCompat.b
        public void onCreate() {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            Field field = ve.a;
            ve.a aVar = new ve.a(mediaBrowserServiceCompat, this);
            this.b = aVar;
            aVar.onCreate();
        }
    }

    public class f extends e {
        public f(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            super();
        }
    }

    public static class g<T> {
        public final Object a;
        public boolean b;
        public boolean c;
        public int d;

        public g(Object obj) {
            this.a = obj;
        }

        public boolean a() {
            return this.b || this.c;
        }

        public void b(Bundle bundle) {
            StringBuilder sbZ = jo.z("It is not supported to send an error for ");
            sbZ.append(this.a);
            throw new UnsupportedOperationException(sbZ.toString());
        }

        public void c(T t) {
            throw null;
        }

        public void d(T t) {
            if (this.b || this.c) {
                StringBuilder sbZ = jo.z("sendResult() called when either sendResult() or sendError() had already been called for: ");
                sbZ.append(this.a);
                throw new IllegalStateException(sbZ.toString());
            }
            this.b = true;
            c(null);
        }
    }

    public class h {
        public h() {
        }
    }

    public interface i {
    }

    public static class j implements i {
        public final Messenger a;

        public j(Messenger messenger) {
            this.a = messenger;
        }

        public IBinder a() {
            return this.a.getBinder();
        }

        public void b(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            c(3, bundle3);
        }

        public final void c(int i, Bundle bundle) throws RemoteException {
            Message messageObtain = Message.obtain();
            messageObtain.what = i;
            messageObtain.arg1 = 2;
            messageObtain.setData(bundle);
            this.a.send(messageObtain);
        }
    }

    public final class k extends Handler {
        public final h a;

        public k() {
            this.a = MediaBrowserServiceCompat.this.new h();
        }

        public void a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.ensureClassLoader(bundle);
                    h hVar = this.a;
                    String string = data.getString("data_package_name");
                    int i = data.getInt("data_calling_pid");
                    int i2 = data.getInt("data_calling_uid");
                    j jVar = new j(message.replyTo);
                    MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                    Objects.requireNonNull(mediaBrowserServiceCompat);
                    boolean z = false;
                    if (string != null) {
                        String[] packagesForUid = mediaBrowserServiceCompat.getPackageManager().getPackagesForUid(i2);
                        int length = packagesForUid.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 < length) {
                                if (packagesForUid[i3].equals(string)) {
                                    z = true;
                                } else {
                                    i3++;
                                }
                            }
                        }
                    }
                    if (z) {
                        MediaBrowserServiceCompat.this.g.a(new ge(hVar, jVar, string, i, i2, bundle));
                        return;
                    }
                    throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + string);
                case 2:
                    h hVar2 = this.a;
                    MediaBrowserServiceCompat.this.g.a(new he(hVar2, new j(message.replyTo)));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.ensureClassLoader(bundle2);
                    h hVar3 = this.a;
                    MediaBrowserServiceCompat.this.g.a(new ie(hVar3, new j(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token"), bundle2));
                    return;
                case 4:
                    h hVar4 = this.a;
                    MediaBrowserServiceCompat.this.g.a(new je(hVar4, new j(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token")));
                    return;
                case 5:
                    h hVar5 = this.a;
                    String string2 = data.getString("data_media_item_id");
                    ResultReceiver resultReceiver = (ResultReceiver) data.getParcelable("data_result_receiver");
                    j jVar2 = new j(message.replyTo);
                    Objects.requireNonNull(hVar5);
                    if (TextUtils.isEmpty(string2) || resultReceiver == null) {
                        return;
                    }
                    MediaBrowserServiceCompat.this.g.a(new ke(hVar5, jVar2, string2, resultReceiver));
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.ensureClassLoader(bundle3);
                    h hVar6 = this.a;
                    MediaBrowserServiceCompat.this.g.a(new le(hVar6, new j(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3));
                    return;
                case 7:
                    h hVar7 = this.a;
                    MediaBrowserServiceCompat.this.g.a(new me(hVar7, new j(message.replyTo)));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.ensureClassLoader(bundle4);
                    h hVar8 = this.a;
                    String string3 = data.getString("data_search_query");
                    ResultReceiver resultReceiver2 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    j jVar3 = new j(message.replyTo);
                    Objects.requireNonNull(hVar8);
                    if (TextUtils.isEmpty(string3) || resultReceiver2 == null) {
                        return;
                    }
                    MediaBrowserServiceCompat.this.g.a(new ne(hVar8, jVar3, string3, bundle4, resultReceiver2));
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.ensureClassLoader(bundle5);
                    h hVar9 = this.a;
                    String string4 = data.getString("data_custom_action");
                    ResultReceiver resultReceiver3 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    j jVar4 = new j(message.replyTo);
                    Objects.requireNonNull(hVar9);
                    if (TextUtils.isEmpty(string4) || resultReceiver3 == null) {
                        return;
                    }
                    MediaBrowserServiceCompat.this.g.a(new oe(hVar9, jVar4, string4, bundle5, resultReceiver3));
                    return;
                default:
                    Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                    return;
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            data.putInt("data_calling_pid", Binder.getCallingPid());
            return super.sendMessageAtTime(message, j);
        }
    }

    public void a(g gVar) {
        if (gVar.b || gVar.c) {
            StringBuilder sbZ = jo.z("sendError() called when either sendResult() or sendError() had already been called for: ");
            sbZ.append(gVar.a);
            throw new IllegalStateException(sbZ.toString());
        }
        gVar.c = true;
        gVar.b(null);
    }

    public abstract void b(String str, int i2, Bundle bundle);

    public abstract void c(String str, g<List<MediaBrowserCompat.MediaItem>> gVar);

    public void d(String str, g gVar) {
        gVar.d = 1;
        c(str, gVar);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public void e(g gVar) {
        gVar.d = 2;
        gVar.d(null);
    }

    public void f(g gVar) {
        gVar.d = 4;
        gVar.d(null);
    }

    public void g() {
    }

    public void h() {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return ((MediaBrowserService) ((c) this.e).b).onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            this.e = new f(this);
        } else if (i2 >= 26) {
            this.e = new e();
        } else if (i2 >= 23) {
            this.e = new d();
        } else {
            this.e = new c();
        }
        this.e.onCreate();
    }
}
