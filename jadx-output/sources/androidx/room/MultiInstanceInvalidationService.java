package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import defpackage.ig;
import defpackage.jg;
import defpackage.n4;

/* loaded from: classes.dex */
public class MultiInstanceInvalidationService extends Service {
    public int e = 0;
    public final n4<String> f = new n4<>(10);
    public final RemoteCallbackList<ig> g = new a();
    public final jg h = new b();

    public class a extends RemoteCallbackList<ig> {
        public a() {
        }

        @Override // android.os.RemoteCallbackList
        public void onCallbackDied(IInterface iInterface, Object obj) {
            MultiInstanceInvalidationService.this.f.i(((Integer) obj).intValue());
        }
    }

    public class b extends jg {
        public b() {
        }

        public void Z(int i, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.g) {
                String strF = MultiInstanceInvalidationService.this.f.f(i, null);
                if (strF == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int iBeginBroadcast = MultiInstanceInvalidationService.this.g.beginBroadcast();
                for (int i2 = 0; i2 < iBeginBroadcast; i2++) {
                    try {
                        int iIntValue = ((Integer) MultiInstanceInvalidationService.this.g.getBroadcastCookie(i2)).intValue();
                        String strE = MultiInstanceInvalidationService.this.f.e(iIntValue);
                        if (i != iIntValue && strF.equals(strE)) {
                            try {
                                ((ig) MultiInstanceInvalidationService.this.g.getBroadcastItem(i2)).s1(strArr);
                            } catch (RemoteException e) {
                                Log.w("ROOM", "Error invoking a remote callback", e);
                            }
                        }
                    } finally {
                        MultiInstanceInvalidationService.this.g.finishBroadcast();
                    }
                }
            }
        }

        public int g0(ig igVar, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.g) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i = multiInstanceInvalidationService.e + 1;
                multiInstanceInvalidationService.e = i;
                if (multiInstanceInvalidationService.g.register(igVar, Integer.valueOf(i))) {
                    MultiInstanceInvalidationService.this.f.b(i, str);
                    return i;
                }
                MultiInstanceInvalidationService multiInstanceInvalidationService2 = MultiInstanceInvalidationService.this;
                multiInstanceInvalidationService2.e--;
                return 0;
            }
        }

        public void l0(ig igVar, int i) {
            synchronized (MultiInstanceInvalidationService.this.g) {
                MultiInstanceInvalidationService.this.g.unregister(igVar);
                MultiInstanceInvalidationService.this.f.i(i);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.h;
    }
}
