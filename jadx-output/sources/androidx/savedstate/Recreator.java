package androidx.savedstate;

import android.os.Bundle;
import defpackage.ad;
import defpackage.bd;
import defpackage.dd;
import defpackage.ed;
import defpackage.jo;
import defpackage.sg;
import defpackage.ug;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class Recreator implements bd {
    public final ug e;

    public Recreator(ug ugVar) {
        this.e = ugVar;
    }

    @Override // defpackage.bd
    public void c(dd ddVar, ad.a aVar) throws NoSuchMethodException, SecurityException {
        if (aVar != ad.a.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        ((ed) ddVar.getLifecycle()).a.n(this);
        sg savedStateRegistry = this.e.getSavedStateRegistry();
        if (!savedStateRegistry.c) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = savedStateRegistry.b;
        Bundle bundle2 = null;
        if (bundle != null) {
            Bundle bundle3 = bundle.getBundle("androidx.savedstate.Restarter");
            savedStateRegistry.b.remove("androidx.savedstate.Restarter");
            if (savedStateRegistry.b.isEmpty()) {
                savedStateRegistry.b = null;
            }
            bundle2 = bundle3;
        }
        if (bundle2 == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundle2.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            try {
                Class<? extends U> clsAsSubclass = Class.forName(next, false, Recreator.class.getClassLoader()).asSubclass(sg.a.class);
                try {
                    Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    try {
                        ((sg.a) declaredConstructor.newInstance(new Object[0])).a(this.e);
                    } catch (Exception e) {
                        throw new RuntimeException(jo.n("Failed to instantiate ", next), e);
                    }
                } catch (NoSuchMethodException e2) {
                    StringBuilder sbZ = jo.z("Class");
                    sbZ.append(clsAsSubclass.getSimpleName());
                    sbZ.append(" must have default constructor in order to be automatically recreated");
                    throw new IllegalStateException(sbZ.toString(), e2);
                }
            } catch (ClassNotFoundException e3) {
                throw new RuntimeException(jo.o("Class ", next, " wasn't found"), e3);
            }
        }
    }
}
