.class public final Leg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc72;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc72<",
        "Lv31;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lag2;


# direct methods
.method public constructor <init>(Lag2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leg2;->a:Lag2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Leg2;->a:Lag2;

    const/4 v1, 0x0

    iput-object v1, v0, Lag2;->o:Lv31;

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lv31;

    .line 2
    iget-object v0, p0, Leg2;->a:Lag2;

    iget-object v0, v0, Lag2;->o:Lv31;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lf61;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Leg2;->a:Lag2;

    iput-object p1, v0, Lag2;->o:Lv31;

    .line 5
    iget-object v0, v0, Lag2;->g:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    iget-object v0, p0, Leg2;->a:Lag2;

    .line 8
    iget-object v0, v0, Lag2;->g:Landroid/view/ViewGroup;

    .line 9
    iget-object v1, p1, Lv31;->h:Landroid/view/View;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzw()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-boolean v0, p1, Lv31;->l:Z

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Leg2;->a:Lag2;

    .line 13
    iget-object v0, v0, Lag2;->l:Lcom/google/android/gms/internal/ads/zzbar;

    .line 14
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    sget-object v1, Ly40;->Y2:Lo40;

    .line 15
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 16
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 18
    :cond_1
    iget-object v0, p0, Leg2;->a:Lag2;

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Lv31;->c()Z

    move-result v1

    .line 21
    sget-object v2, Ly40;->M2:Lo40;

    .line 22
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 23
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 25
    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>()V

    const/16 v4, 0x32

    .line 26
    iput v4, v3, Lcom/google/android/gms/ads/internal/overlay/zzq;->size:I

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 27
    :goto_0
    iput v5, v3, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingLeft:I

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 28
    :goto_1
    iput v1, v3, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingRight:I

    .line 29
    iput v4, v3, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingTop:I

    .line 30
    iput v2, v3, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingBottom:I

    .line 31
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v2, v0, Lag2;->f:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzab;)V

    .line 32
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34
    invoke-virtual {p1}, Lv31;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    goto :goto_2

    :cond_4
    const/16 v2, 0x9

    .line 35
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 36
    iget-object v2, p1, Lv31;->i:Lxw0;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lxw0;->f0()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    .line 37
    iget-boolean v2, p1, Lv31;->m:Z

    if-nez v2, :cond_6

    const/4 v4, 0x1

    .line 38
    :cond_6
    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzap(Z)V

    .line 39
    iget-object v2, p0, Leg2;->a:Lag2;

    .line 40
    iget-object v2, v2, Lag2;->g:Landroid/view/ViewGroup;

    .line 41
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :cond_7
    iget-object v0, p0, Leg2;->a:Lag2;

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p1, Lv31;->i:Lxw0;

    if-eqz v1, :cond_8

    .line 45
    invoke-interface {v1, v0}, Lxw0;->S(Lqn3;)V

    .line 46
    :cond_8
    iget-object v0, p0, Leg2;->a:Lag2;

    .line 47
    iget-object v1, v0, Lag2;->g:Landroid/view/ViewGroup;

    .line 48
    invoke-static {v0}, Lag2;->W6(Lag2;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->g:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 49
    iget-object v0, p0, Leg2;->a:Lag2;

    .line 50
    iget-object v1, v0, Lag2;->g:Landroid/view/ViewGroup;

    .line 51
    invoke-static {v0}, Lag2;->W6(Lag2;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->j:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 52
    iget-object v0, p0, Leg2;->a:Lag2;

    .line 53
    iget-object v0, v0, Lag2;->k:Lmg2;

    .line 54
    new-instance v1, Lg41;

    iget-object v2, p0, Leg2;->a:Lag2;

    invoke-direct {v1, p1, v2}, Lg41;-><init>(Lv31;Lit3;)V

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :goto_4
    iget-object v2, v0, Lmg2;->l:Lmg2;

    if-eqz v2, :cond_9

    move-object v0, v2

    goto :goto_4

    .line 57
    :cond_9
    iget-object v0, v0, Lmg2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 59
    :cond_a
    :try_start_0
    check-cast v0, Lyn3;

    .line 60
    invoke-interface {v0, v1}, Lyn3;->W1(Lxn3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 61
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :goto_5
    invoke-virtual {p1}, Lf61;->b()V

    return-void
.end method
