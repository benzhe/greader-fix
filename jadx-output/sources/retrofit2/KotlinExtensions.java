package retrofit2;

import defpackage.im7;
import defpackage.mj7;
import defpackage.n56;
import defpackage.pk7;
import defpackage.po7;
import defpackage.sk7;
import defpackage.vk7;
import defpackage.xk7;
import java.lang.reflect.Method;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public final class KotlinExtensions {

    @xk7(c = "retrofit2.KotlinExtensions", f = "KotlinExtensions.kt", l = {113}, m = "suspendAndThrow")
    /* renamed from: retrofit2.KotlinExtensions$suspendAndThrow$1, reason: invalid class name */
    public static final class AnonymousClass1 extends vk7 {
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(pk7 pk7Var) {
            super(pk7Var);
        }

        @Override // defpackage.tk7
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return KotlinExtensions.suspendAndThrow(null, this);
        }
    }

    public static final <T> Object await(Call<T> call, pk7<? super T> pk7Var) throws Throwable {
        final po7 po7Var = new po7(n56.h1(pk7Var), 1);
        po7Var.a(new KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$2$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable th) {
                im7.f(call2, "call");
                im7.f(th, "t");
                po7Var.resumeWith(n56.K(th));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                im7.f(call2, "call");
                im7.f(response, "response");
                if (!response.isSuccessful()) {
                    po7Var.resumeWith(n56.K(new HttpException(response)));
                    return;
                }
                T tBody = response.body();
                if (tBody != null) {
                    po7Var.resumeWith(tBody);
                    return;
                }
                Object objTag = call2.request().tag(Invocation.class);
                if (objTag == null) {
                    im7.j();
                    throw null;
                }
                im7.b(objTag, "call.request().tag(Invocation::class.java)!!");
                Method method = ((Invocation) objTag).method();
                StringBuilder sb = new StringBuilder();
                sb.append("Response from ");
                im7.b(method, "method");
                Class<?> declaringClass = method.getDeclaringClass();
                im7.b(declaringClass, "method.declaringClass");
                sb.append(declaringClass.getName());
                sb.append(FilenameUtils.EXTENSION_SEPARATOR);
                sb.append(method.getName());
                sb.append(" was null but response body type was declared as non-null");
                po7Var.resumeWith(n56.K(new mj7(sb.toString())));
            }
        });
        Object objJ = po7Var.j();
        if (objJ == sk7.COROUTINE_SUSPENDED) {
            im7.e(pk7Var, "frame");
        }
        return objJ;
    }

    public static final <T> Object awaitNullable(Call<T> call, pk7<? super T> pk7Var) throws Throwable {
        final po7 po7Var = new po7(n56.h1(pk7Var), 1);
        po7Var.a(new KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$4$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable th) {
                im7.f(call2, "call");
                im7.f(th, "t");
                po7Var.resumeWith(n56.K(th));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                im7.f(call2, "call");
                im7.f(response, "response");
                if (response.isSuccessful()) {
                    po7Var.resumeWith(response.body());
                } else {
                    po7Var.resumeWith(n56.K(new HttpException(response)));
                }
            }
        });
        Object objJ = po7Var.j();
        if (objJ == sk7.COROUTINE_SUSPENDED) {
            im7.e(pk7Var, "frame");
        }
        return objJ;
    }

    public static final <T> Object awaitResponse(Call<T> call, pk7<? super Response<T>> pk7Var) throws Throwable {
        final po7 po7Var = new po7(n56.h1(pk7Var), 1);
        po7Var.a(new KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable th) {
                im7.f(call2, "call");
                im7.f(th, "t");
                po7Var.resumeWith(n56.K(th));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                im7.f(call2, "call");
                im7.f(response, "response");
                po7Var.resumeWith(response);
            }
        });
        Object objJ = po7Var.j();
        if (objJ == sk7.COROUTINE_SUSPENDED) {
            im7.e(pk7Var, "frame");
        }
        return objJ;
    }

    public static final <T> T create(Retrofit retrofit) {
        im7.f(retrofit, "$this$create");
        throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object suspendAndThrow(final java.lang.Exception r4, defpackage.pk7<?> r5) throws java.lang.Throwable {
        /*
            boolean r0 = r5 instanceof retrofit2.KotlinExtensions.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r5
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = (retrofit2.KotlinExtensions.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = new retrofit2.KotlinExtensions$suspendAndThrow$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            sk7 r1 = defpackage.sk7.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r4 = r0.L$0
            java.lang.Exception r4 = (java.lang.Exception) r4
            boolean r4 = r5 instanceof sj7.a
            if (r4 != 0) goto L2e
            yj7 r4 = defpackage.yj7.a
            return r4
        L2e:
            sj7$a r5 = (sj7.a) r5
            java.lang.Throwable r4 = r5.e
            throw r4
        L33:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3b:
            boolean r2 = r5 instanceof sj7.a
            if (r2 != 0) goto L57
            r0.L$0 = r4
            r0.label = r3
            cp7 r5 = defpackage.kp7.a
            rk7 r2 = r0.getContext()
            retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1 r3 = new retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1
            r3.<init>()
            r5.t(r2, r3)
            java.lang.String r4 = "frame"
            defpackage.im7.e(r0, r4)
            return r1
        L57:
            sj7$a r5 = (sj7.a) r5
            java.lang.Throwable r4 = r5.e
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.KotlinExtensions.suspendAndThrow(java.lang.Exception, pk7):java.lang.Object");
    }
}
