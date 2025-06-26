package defpackage;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
public final class a30 implements DynamiteModule.b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.a a(Context context, String str, DynamiteModule.b.InterfaceC0004b interfaceC0004b) throws DynamiteModule.a {
        DynamiteModule.b.a aVar = new DynamiteModule.b.a();
        int iA = interfaceC0004b.a(context, str, true);
        aVar.b = iA;
        if (iA != 0) {
            aVar.c = 1;
        } else {
            int iB = interfaceC0004b.b(context, str);
            aVar.a = iB;
            if (iB != 0) {
                aVar.c = -1;
            }
        }
        return aVar;
    }
}
