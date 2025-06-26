package defpackage;

import defpackage.gl1;

/* loaded from: classes.dex */
public final class nn1 implements y63 {
    public static final y63 a = new nn1();

    @Override // defpackage.y63
    public final boolean k(int i) {
        gl1.a aVar;
        switch (i) {
            case 0:
                aVar = gl1.a.DEBUGGER_STATE_UNSPECIFIED;
                break;
            case 1:
                aVar = gl1.a.DEBUGGER_STATE_NOT_INSTALLED;
                break;
            case 2:
                aVar = gl1.a.DEBUGGER_STATE_INSTALLED;
                break;
            case 3:
                aVar = gl1.a.DEBUGGER_STATE_ACTIVE;
                break;
            case 4:
                aVar = gl1.a.DEBUGGER_STATE_ENVVAR;
                break;
            case 5:
                aVar = gl1.a.DEBUGGER_STATE_MACHPORT;
                break;
            case 6:
                aVar = gl1.a.DEBUGGER_STATE_ENVVAR_MACHPORT;
                break;
            default:
                aVar = null;
                break;
        }
        return aVar != null;
    }
}
