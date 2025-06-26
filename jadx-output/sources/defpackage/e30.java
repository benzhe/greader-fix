package defpackage;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
public final class e30 implements DynamiteModule.b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.a a(Context context, String str, DynamiteModule.b.InterfaceC0004b interfaceC0004b) throws DynamiteModule.a {
        DynamiteModule.b.a aVar = new DynamiteModule.b.a();
        aVar.a = interfaceC0004b.b(context, str);
        int iA = interfaceC0004b.a(context, str, true);
        aVar.b = iA;
        int i = aVar.a;
        if (i == 0 && iA == 0) {
            aVar.c = 0;
        } else if (iA >= i) {
            aVar.c = 1;
        } else {
            aVar.c = -1;
        }
        return aVar;
    }
}
