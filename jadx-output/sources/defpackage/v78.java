package defpackage;

import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.IOException;
import pl.droidsonroids.gif.GifInfoHandle;

/* loaded from: classes2.dex */
public abstract class v78 {

    public static final class a extends v78 {
        public final AssetManager a;
        public final String b;

        public a(AssetManager assetManager, String str) {
            this.a = assetManager;
            this.b = str;
        }

        @Override // defpackage.v78
        public GifInfoHandle a() throws IOException {
            return new GifInfoHandle(this.a.openFd(this.b), false);
        }
    }

    public static class b extends v78 {
        public final Resources a;
        public final int b;

        public b(Resources resources, int i) {
            this.a = resources;
            this.b = i;
        }

        @Override // defpackage.v78
        public GifInfoHandle a() throws IOException {
            return new GifInfoHandle(this.a.openRawResourceFd(this.b), false);
        }
    }

    public abstract GifInfoHandle a() throws IOException;
}
