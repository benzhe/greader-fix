package okhttp3.internal.cache;

import defpackage.im7;
import defpackage.jm7;
import defpackage.pl7;
import defpackage.yj7;
import java.io.IOException;
import okhttp3.internal.cache.DiskLruCache;

/* loaded from: classes2.dex */
public final class DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1 extends jm7 implements pl7<IOException, yj7> {
    public final /* synthetic */ int $index$inlined;
    public final /* synthetic */ DiskLruCache.Editor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1(DiskLruCache.Editor editor, int i) {
        super(1);
        this.this$0 = editor;
        this.$index$inlined = i;
    }

    @Override // defpackage.pl7
    public /* bridge */ /* synthetic */ yj7 invoke(IOException iOException) {
        invoke2(iOException);
        return yj7.a;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(IOException iOException) {
        im7.e(iOException, "it");
        synchronized (this.this$0.this$0) {
            this.this$0.detach$okhttp();
        }
    }
}
