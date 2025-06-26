package defpackage;

import android.content.Context;

/* loaded from: classes2.dex */
public class fw6 {
    public boolean a;
    public boolean b;
    public boolean c;
    public boolean d;
    public boolean e;

    public static class b {
        public boolean a = true;
        public boolean b = true;
        public boolean c = true;
        public boolean d = true;
        public boolean e = true;
    }

    public fw6(b bVar, a aVar) {
        this.a = bVar.a;
        this.b = bVar.b;
        this.c = bVar.c;
        this.d = bVar.d;
        this.e = bVar.e;
    }

    public static fw6 a(Context context) {
        b bVar = new b();
        bVar.a = iw6.f(context, "offline_load_full_content", true);
        bVar.b = iw6.f(context, "offline_load_images", false);
        bVar.c = iw6.f(context, "offline_load_audio", false);
        bVar.d = iw6.f(context, "offline_load_video", false);
        bVar.e = iw6.f(context, "offline_save_data_traffic", true);
        return new fw6(bVar, null);
    }
}
