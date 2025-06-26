package defpackage;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
public final class d30 implements DynamiteModule.b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.a a(Context context, String str, DynamiteModule.b.InterfaceC0004b interfaceC0004b) throws DynamiteModule.a {
        DynamiteModule.b.a aVar = new DynamiteModule.b.a();
        int iB = interfaceC0004b.b(context, str);
        aVar.a = iB;
        if (iB != 0) {
            aVar.b = interfaceC0004b.a(context, str, false);
        } else {
            aVar.b = interfaceC0004b.a(context, str, true);
        }
        int i = aVar.a;
        if (i == 0 && aVar.b == 0) {
            aVar.c = 0;
        } else if (i >= aVar.b) {
            aVar.c = -1;
        } else {
            aVar.c = 1;
        }
        return aVar;
    }
}
