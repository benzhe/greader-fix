package defpackage;

import android.view.animation.Interpolator;
import androidx.fragment.app.Fragment;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class bc extends nd {
    public static final od g = new a();
    public final boolean e;
    public final HashSet<Fragment> b = new HashSet<>();
    public final HashMap<String, bc> c = new HashMap<>();
    public final HashMap<String, qd> d = new HashMap<>();
    public boolean f = false;

    public static class a implements od {
        public <T extends nd> T a(Class<T> cls) {
            return new bc(true);
        }
    }

    public bc(boolean z) {
        this.e = z;
    }

    @Override // defpackage.nd
    public void a() {
        Interpolator interpolator = xb.K;
        this.f = true;
    }

    public boolean b(Fragment fragment) {
        if (this.b.contains(fragment) && this.e) {
            return this.f;
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        bc bcVar = (bc) obj;
        return this.b.equals(bcVar.b) && this.c.equals(bcVar.c) && this.d.equals(bcVar.d);
    }

    public int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.b.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
