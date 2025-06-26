package retrofit2;

import defpackage.jm7;
import defpackage.pl7;
import defpackage.yj7;

/* loaded from: classes2.dex */
public final class KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1 extends jm7 implements pl7<Throwable, yj7> {
    public final /* synthetic */ Call $this_awaitResponse$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1(Call call) {
        super(1);
        this.$this_awaitResponse$inlined = call;
    }

    @Override // defpackage.pl7
    public /* bridge */ /* synthetic */ yj7 invoke(Throwable th) {
        invoke2(th);
        return yj7.a;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        this.$this_awaitResponse$inlined.cancel();
    }
}
