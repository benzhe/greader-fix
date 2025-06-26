package defpackage;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.FirebaseFirestore;
import defpackage.hu5;
import defpackage.yo5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class to5 {
    public final bu5 a;
    public final FirebaseFirestore b;

    public to5(bu5 bu5Var, FirebaseFirestore firebaseFirestore) {
        this.a = bu5Var;
        this.b = firebaseFirestore;
    }

    public e45<Void> a(String str, Object obj, Object... objArr) {
        mp5 mp5Var = this.b.f;
        Comparator comparator = vx5.a;
        if (objArr.length % 2 == 1) {
            throw new IllegalArgumentException("Missing value in call to update().  There must be an even number of arguments that alternate between field names and values");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(obj);
        Collections.addAll(arrayList, objArr);
        for (int i = 0; i < arrayList.size(); i += 2) {
            Object obj2 = arrayList.get(i);
            if (!(obj2 instanceof String) && !(obj2 instanceof xo5)) {
                StringBuilder sbZ = jo.z("Excepted field name at argument position ");
                sbZ.append(i + 1 + 1);
                sbZ.append(" but got ");
                sbZ.append(obj2);
                sbZ.append(" in call to update.  The arguments to update should alternate between field names and values");
                throw new IllegalArgumentException(sbZ.toString());
            }
        }
        Objects.requireNonNull(mp5Var);
        bx5.c(arrayList.size() % 2 == 0, "Expected fieldAndValues to contain an even number of elements", new Object[0]);
        gr5 gr5Var = new gr5(ir5.Update);
        hr5 hr5VarA = gr5Var.a();
        hu5 hu5Var = hu5.b;
        Objects.requireNonNull(hu5Var);
        hu5.a aVar = new hu5.a(hu5Var);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            Object next2 = it.next();
            boolean z = next instanceof String;
            bx5.c(z || (next instanceof xo5), "Expected argument to be String or FieldPath.", new Object[0]);
            eu5 eu5Var = z ? xo5.a((String) next).a : ((xo5) next).a;
            if (next2 instanceof yo5.c) {
                hr5VarA.a(eu5Var);
            } else {
                eu5 eu5Var2 = hr5VarA.b;
                eu5 eu5VarI = eu5Var2 == null ? null : eu5Var2.i(eu5Var);
                hr5 hr5Var = new hr5(hr5VarA.a, eu5VarI, false);
                if (eu5VarI != null) {
                    for (int i2 = 0; i2 < hr5Var.b.I(); i2++) {
                        hr5Var.e(hr5Var.b.y(i2));
                    }
                }
                bd6 bd6VarA = mp5Var.a(next2, hr5Var);
                if (bd6VarA != null) {
                    hr5VarA.a(eu5Var);
                    aVar.c(eu5Var, bd6VarA);
                }
            }
        }
        hu5 hu5VarB = aVar.b();
        ou5 ou5Var = new ou5(gr5Var.b);
        List listUnmodifiableList = Collections.unmodifiableList(gr5Var.c);
        final mq5 mq5Var = this.b.h;
        bu5 bu5Var = this.a;
        wu5 wu5VarA = wu5.a(true);
        final ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new vu5(bu5Var, hu5VarB, ou5Var, wu5VarA));
        if (!listUnmodifiableList.isEmpty()) {
            arrayList2.add(new zu5(bu5Var, listUnmodifiableList));
        }
        mq5Var.b();
        final f45 f45Var = new f45();
        mq5Var.c.a(new cx5(new Runnable(mq5Var, arrayList2, f45Var) { // from class: gq5
            public final mq5 e;
            public final List f;
            public final f45 g;

            {
                this.e = mq5Var;
                this.f = arrayList2;
                this.g = f45Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                mq5 mq5Var2 = this.e;
                final List list = this.f;
                f45<Void> f45Var2 = this.g;
                cr5 cr5Var = mq5Var2.e;
                cr5Var.g("writeMutations");
                final fs5 fs5Var = cr5Var.a;
                Objects.requireNonNull(fs5Var);
                final Timestamp timestamp = new Timestamp(new Date());
                final HashSet hashSet = new HashSet();
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    hashSet.add(((qu5) it2.next()).a);
                }
                hs5 hs5Var = (hs5) fs5Var.a.g("Locally write mutations", new rx5(fs5Var, hashSet, list, timestamp) { // from class: xr5
                    public final fs5 a;
                    public final Set b;
                    public final List c;
                    public final Timestamp d;

                    {
                        this.a = fs5Var;
                        this.b = hashSet;
                        this.c = list;
                        this.d = timestamp;
                    }

                    @Override // defpackage.rx5
                    public Object get() {
                        fs5 fs5Var2 = this.a;
                        Set set = this.b;
                        List<qu5> list2 = this.c;
                        Timestamp timestamp2 = this.d;
                        tr5 tr5Var = fs5Var2.d;
                        jn5<bu5, fu5> jn5VarE = tr5Var.e(tr5Var.a.c(set));
                        ArrayList arrayList3 = new ArrayList();
                        for (qu5 qu5Var : list2) {
                            hu5 hu5VarC = qu5Var.c(jn5VarE.h(qu5Var.a));
                            if (hu5VarC != null) {
                                arrayList3.add(new vu5(qu5Var.a, hu5VarC, hu5VarC.a(hu5VarC.a.U()), wu5.a(true)));
                            }
                        }
                        ru5 ru5VarC = fs5Var2.b.c(timestamp2, arrayList3, list2);
                        Iterator it3 = ((HashSet) ru5VarC.b()).iterator();
                        while (it3.hasNext()) {
                            bu5 bu5Var2 = (bu5) it3.next();
                            fu5 fu5VarA = ru5VarC.a(bu5Var2, jn5VarE.h(bu5Var2));
                            if (fu5VarA != null) {
                                jn5VarE = jn5VarE.o(fu5VarA.a, fu5VarA);
                            }
                        }
                        return new hs5(ru5VarC.a, jn5VarE);
                    }
                });
                int i3 = hs5Var.a;
                Map<Integer, f45<Void>> map = cr5Var.j.get(cr5Var.m);
                if (map == null) {
                    map = new HashMap<>();
                    cr5Var.j.put(cr5Var.m, map);
                }
                map.put(Integer.valueOf(i3), f45Var2);
                cr5Var.h(hs5Var.b, null);
                cr5Var.b.c();
            }
        }));
        return f45Var.a.i(nx5.b, vx5.b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof to5)) {
            return false;
        }
        to5 to5Var = (to5) obj;
        return this.a.equals(to5Var.a) && this.b.equals(to5Var.b);
    }

    public int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }
}
