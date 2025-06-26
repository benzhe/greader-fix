.class public final Lcom/google/android/gms/internal/ads/zzbft;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lxw0;


# static fields
.field public static final synthetic h:I


# instance fields
.field public final e:Lxw0;

.field public final f:Lxt0;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lxw0;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    .line 4
    new-instance v0, Lxt0;

    .line 5
    check-cast p1, Lmx0;

    .line 6
    iget-object v1, p1, Lmx0;->e:Lky0;

    .line 7
    iget-object v1, v1, Lky0;->c:Landroid/content/Context;

    .line 8
    invoke-direct {v0, v1, p0, p0}, Lxt0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lxw0;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->f:Lxt0;

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A()Lxt0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->f:Lxt0;

    return-object v0
.end method

.method public final A0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->A0()V

    return-void
.end method

.method public final B(ZI)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v0, Ly40;->u0:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v2, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v1}, Lxw0;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2}, Lxw0;->B(ZI)Z

    move-result p1

    return p1
.end method

.method public final B0(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2, p3, p4}, Lcy0;->B0(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final C()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Liu0;->C()I

    move-result v0

    return v0
.end method

.method public final C0(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->C0(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    return-void
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->D()Z

    move-result v0

    return v0
.end method

.method public final D0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final E(Lsk2;Lwk2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2}, Lxw0;->E(Lsk2;Lwk2;)V

    return-void
.end method

.method public final E0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->E0()Z

    move-result v0

    return v0
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2, p3}, Lxw0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->G()V

    return-void
.end method

.method public final H(Li70;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->H(Li70;)V

    return-void
.end method

.method public final I()Lhy0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object v0

    return-object v0
.end method

.method public final J(Ljy0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->J(Ljy0;)V

    return-void
.end method

.method public final K(Lj70;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->K(Lj70;)V

    return-void
.end method

.method public final L()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->L()Z

    move-result v0

    return v0
.end method

.method public final M()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Liu0;->M()I

    move-result v0

    return v0
.end method

.method public final N(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->N(Z)V

    return-void
.end method

.method public final O()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Liu0;->O()I

    move-result v0

    return v0
.end method

.method public final P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->P()V

    return-void
.end method

.method public final Q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Liu0;->Q()V

    return-void
.end method

.method public final R(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2, p3}, Liu0;->R(ZJ)V

    return-void
.end method

.method public final S(Lqn3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->S(Lqn3;)V

    return-void
.end method

.method public final T()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->T()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public final U()Lm50;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Liu0;->U()Lm50;

    move-result-object v0

    return-object v0
.end method

.method public final V(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lcy0;->V(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void
.end method

.method public final W(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->W(Z)V

    return-void
.end method

.method public final X(Lcom/google/android/gms/ads/internal/util/zzbg;Lsy1;Lns1;Lpp2;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcy0;->X(Lcom/google/android/gms/ads/internal/util/zzbg;Lsy1;Lns1;Lpp2;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final Y()Lj70;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->Y()Lj70;

    move-result-object v0

    return-object v0
.end method

.method public final Z(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2}, Lzd0;->Z(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzbar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v0

    return-object v0
.end method

.method public final b0(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->b0(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    return-void
.end method

.method public final c()Ljy0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->c()Ljy0;

    move-result-object v0

    return-object v0
.end method

.method public final c0(Lfm3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lem3;->c0(Lfm3;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lzd0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final d0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2}, Lod0;->d0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final destroy()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbft;->r0()Lx20;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v2, Lkx0;

    invoke-direct {v2, v0}, Lkx0;-><init>(Lx20;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    new-instance v0, Ljx0;

    invoke-direct {v0, p0}, Ljx0;-><init>(Lcom/google/android/gms/internal/ads/zzbft;)V

    sget-object v2, Ly40;->U2:Lo40;

    .line 4
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 7
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->destroy()V

    return-void
.end method

.method public final e()Lwk2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->e()Lwk2;

    move-result-object v0

    return-object v0
.end method

.method public final e0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->e0(Z)V

    return-void
.end method

.method public final f()Lrx0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->f()Lrx0;

    move-result-object v0

    return-object v0
.end method

.method public final f0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->f0()Z

    move-result v0

    return v0
.end method

.method public final g()Lsk2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->g()Lsk2;

    move-result-object v0

    return-object v0
.end method

.method public final g0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->g0(Z)V

    return-void
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Liu0;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;Lzv0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2}, Lxw0;->h(Ljava/lang/String;Lzv0;)V

    return-void
.end method

.method public final h0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->h0()V

    return-void
.end method

.method public final i()Ll50;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->i()Ll50;

    move-result-object v0

    return-object v0
.end method

.method public final i0()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->i0()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->j()Z

    move-result v0

    return v0
.end method

.method public final j0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v1, v0}, Lxw0;->setBackgroundColor(I)V

    return-void
.end method

.method public final k(Lrx0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->k(Lrx0;)V

    return-void
.end method

.method public final k0(Ljava/lang/String;Lud0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lud0<",
            "Lkb0<",
            "-",
            "Lxw0;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2}, Lxw0;->k0(Ljava/lang/String;Lud0;)V

    return-void
.end method

.method public final l()Ld23;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->l()Ld23;

    move-result-object v0

    return-object v0
.end method

.method public final l0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Liu0;->l0(Z)V

    return-void
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2, p3}, Lxw0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lxw0;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final m()Lcom/google/android/gms/ads/internal/zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->m()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method public final m0(ZILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2, p3}, Lcy0;->m0(ZILjava/lang/String;)V

    return-void
.end method

.method public final n(Ljava/lang/String;Lkb0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkb0<",
            "-",
            "Lxw0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2}, Lxw0;->n(Ljava/lang/String;Lkb0;)V

    return-void
.end method

.method public final n0()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->n0()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    return-object v0
.end method

.method public final o(Ljava/lang/String;Lkb0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkb0<",
            "-",
            "Lxw0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ler3;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->f:Lxt0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onPause must be called from the UI thread."

    .line 3
    invoke-static {v1}, Lbi;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Lxt0;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->e()V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->onResume()V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->p(Z)V

    return-void
.end method

.method public final p0()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    invoke-virtual {v1}, Lor0;->a()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    sget v2, Lcom/google/android/gms/ads/impl/R$string;->s7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Test Ad"

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 8
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v2, -0xbbbbbc

    .line 10
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x31

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final q0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Liu0;->q0(I)V

    return-void
.end method

.method public final r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Liu0;->r(I)V

    return-void
.end method

.method public final r0()Lx20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->r0()Lx20;

    move-result-object v0

    return-object v0
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Liu0;->s()V

    return-void
.end method

.method public final s0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->setRequestedOrientation(I)V

    return-void
.end method

.method public final setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public final t(ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2}, Lcy0;->t(ZI)V

    return-void
.end method

.method public final t0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Liu0;->t0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->u()V

    return-void
.end method

.method public final u0(Lx20;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->u0(Lx20;)V

    return-void
.end method

.method public final v(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->v(Z)V

    return-void
.end method

.method public final v0(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->v0(Landroid/content/Context;)V

    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->f:Lxt0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onDestroy must be called from the UI thread."

    .line 3
    invoke-static {v1}, Lbi;->f(Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Lxt0;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbcb;->h:Lku0;

    invoke-virtual {v2}, Lku0;->a()V

    .line 6
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbz;->j()V

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcb;->f()V

    .line 9
    iget-object v1, v0, Lxt0;->c:Landroid/view/ViewGroup;

    iget-object v2, v0, Lxt0;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lxt0;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->w()V

    return-void
.end method

.method public final w0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Lxw0;->w0(I)V

    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1, p2}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final x0(Ljava/lang/String;)Lzv0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Liu0;->x0(Ljava/lang/String;)Lzv0;

    move-result-object p1

    return-object p1
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y0()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->y0()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    return-object v0
.end method

.method public final z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0, p1}, Liu0;->z(I)V

    return-void
.end method

.method public final z0()Lqn3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->z0()Lqn3;

    move-result-object v0

    return-object v0
.end method

.method public final zzkr()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzkr()V

    return-void
.end method

.method public final zzks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzks()V

    return-void
.end method
