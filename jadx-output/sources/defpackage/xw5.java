package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public abstract class xw5 {

    public static final class b extends xw5 {
        public final List<Integer> a;
        public final List<Integer> b;
        public final bu5 c;
        public final fu5 d;

        public b(List<Integer> list, List<Integer> list2, bu5 bu5Var, fu5 fu5Var) {
            super(null);
            this.a = list;
            this.b = list2;
            this.c = bu5Var;
            this.d = fu5Var;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (!this.a.equals(bVar.a) || !this.b.equals(bVar.b) || !this.c.equals(bVar.c)) {
                return false;
            }
            fu5 fu5Var = this.d;
            fu5 fu5Var2 = bVar.d;
            return fu5Var != null ? fu5Var.equals(fu5Var2) : fu5Var2 == null;
        }

        public int hashCode() {
            int iHashCode = (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31;
            fu5 fu5Var = this.d;
            return iHashCode + (fu5Var != null ? fu5Var.hashCode() : 0);
        }

        public String toString() {
            StringBuilder sbZ = jo.z("DocumentChange{updatedTargetIds=");
            sbZ.append(this.a);
            sbZ.append(", removedTargetIds=");
            sbZ.append(this.b);
            sbZ.append(", key=");
            sbZ.append(this.c);
            sbZ.append(", newDocument=");
            sbZ.append(this.d);
            sbZ.append('}');
            return sbZ.toString();
        }
    }

    public static final class c extends xw5 {
        public final int a;
        public final rv5 b;

        public c(int i, rv5 rv5Var) {
            super(null);
            this.a = i;
            this.b = rv5Var;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("ExistenceFilterWatchChange{targetId=");
            sbZ.append(this.a);
            sbZ.append(", existenceFilter=");
            sbZ.append(this.b);
            sbZ.append('}');
            return sbZ.toString();
        }
    }

    public static final class d extends xw5 {
        public final e a;
        public final List<Integer> b;
        public final qi6 c;
        public final x47 d;

        public d(e eVar, List<Integer> list, qi6 qi6Var, x47 x47Var) {
            super(null);
            bx5.c(x47Var == null || eVar == e.Removed, "Got cause for a target change that was not a removal", new Object[0]);
            this.a = eVar;
            this.b = list;
            this.c = qi6Var;
            if (x47Var == null || x47Var.f()) {
                this.d = null;
            } else {
                this.d = x47Var;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.a != dVar.a || !this.b.equals(dVar.b) || !this.c.equals(dVar.c)) {
                return false;
            }
            x47 x47Var = this.d;
            if (x47Var == null) {
                return dVar.d == null;
            }
            x47 x47Var2 = dVar.d;
            return x47Var2 != null && x47Var.a.equals(x47Var2.a);
        }

        public int hashCode() {
            int iHashCode = (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31;
            x47 x47Var = this.d;
            return iHashCode + (x47Var != null ? x47Var.a.hashCode() : 0);
        }

        public String toString() {
            StringBuilder sbZ = jo.z("WatchTargetChange{changeType=");
            sbZ.append(this.a);
            sbZ.append(", targetIds=");
            sbZ.append(this.b);
            sbZ.append('}');
            return sbZ.toString();
        }
    }

    public enum e {
        NoChange,
        Added,
        Removed,
        Current,
        Reset
    }

    public xw5(a aVar) {
    }
}
