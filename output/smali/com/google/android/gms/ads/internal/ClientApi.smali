.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lut3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lut3;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lx20;Ljava/lang/String;Lhg0;I)Lbt3;
    .locals 0

    .line 16
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 17
    invoke-static {p1, p3, p4}, Lsy0;->b(Landroid/content/Context;Lhg0;I)Lsy0;

    move-result-object p3

    .line 18
    new-instance p4, Ls52;

    invoke-direct {p4, p3, p1, p2}, Ls52;-><init>(Lsy0;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final zza(Lx20;Lx20;Lx20;)Lf80;
    .locals 1

    .line 38
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 39
    invoke-static {p2}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 40
    invoke-static {p3}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 41
    new-instance v0, Lok1;

    invoke-direct {v0, p1, p2, p3}, Lok1;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final zza(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;I)Lit3;
    .locals 7

    .line 34
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 35
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbar;

    const v1, 0xc365f90

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p4

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbar;-><init>(IIZZZ)V

    .line 37
    new-instance p4, Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p4, p1, p2, p3, v6}, Lcom/google/android/gms/ads/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbar;)V

    return-object p4
.end method

.method public final zza(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;I)Lit3;
    .locals 8

    .line 1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lsy0;->b(Landroid/content/Context;Lhg0;I)Lsy0;

    move-result-object p4

    .line 3
    invoke-virtual {p4}, Lsy0;->m()Lg01;

    move-result-object p4

    .line 4
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p4, Lg01;->a:Landroid/content/Context;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p2, p4, Lg01;->c:Lcom/google/android/gms/internal/ads/zzvt;

    .line 9
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p3, p4, Lg01;->b:Ljava/lang/String;

    .line 11
    iget-object p1, p4, Lg01;->a:Landroid/content/Context;

    const-class p2, Landroid/content/Context;

    invoke-static {p1, p2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    iget-object p1, p4, Lg01;->b:Ljava/lang/String;

    const-class p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    iget-object p1, p4, Lg01;->c:Lcom/google/android/gms/internal/ads/zzvt;

    const-class p2, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-static {p1, p2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    new-instance p1, Li01;

    iget-object v1, p4, Lg01;->d:Lpz0;

    iget-object p2, p4, Lg01;->a:Landroid/content/Context;

    iget-object p3, p4, Lg01;->b:Ljava/lang/String;

    iget-object p4, p4, Lg01;->c:Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Li01;-><init>(Lpz0;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvt;Loz0;)V

    .line 15
    new-instance p5, Lu52;

    iget-object v0, p1, Li01;->h:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lih2;

    iget-object p1, p1, Li01;->f:Lmb3;

    invoke-interface {p1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lw52;

    move-object v2, p5

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lu52;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lih2;Lw52;)V

    return-object p5
.end method

.method public final zza(Lx20;Lhg0;I)Ljn0;
    .locals 2

    .line 22
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 23
    invoke-static {p1, p2, p3}, Lsy0;->b(Landroid/content/Context;Lhg0;I)Lsy0;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lsy0;->u()Ln01;

    move-result-object p2

    .line 25
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iput-object p1, p2, Ln01;->a:Landroid/content/Context;

    .line 28
    const-class p3, Landroid/content/Context;

    invoke-static {p1, p3}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 29
    new-instance p1, Lq01;

    iget-object p3, p2, Ln01;->c:Lpz0;

    iget-object v0, p2, Ln01;->a:Landroid/content/Context;

    iget-object p2, p2, Ln01;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, p3, v0, p2, v1}, Lq01;-><init>(Lpz0;Landroid/content/Context;Ljava/lang/String;Loz0;)V

    .line 30
    iget-object p1, p1, Lq01;->f:Lmb3;

    invoke-interface {p1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnk2;

    return-object p1
.end method

.method public final zza(Lx20;Lx20;)Lx70;
    .locals 1

    .line 19
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 20
    invoke-static {p2}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 21
    new-instance v0, Lrk1;

    invoke-direct {v0, p1, p2}, Lrk1;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v0
.end method

.method public final zza(Lx20;I)Lzt3;
    .locals 0

    .line 31
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 32
    invoke-static {p1, p2}, Lsy0;->z(Landroid/content/Context;I)Lsy0;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lsy0;->k()La11;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lx20;Ljava/lang/String;Lhg0;I)Lfo0;
    .locals 1

    .line 26
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 27
    invoke-static {p1, p3, p4}, Lsy0;->b(Landroid/content/Context;Lhg0;I)Lsy0;

    move-result-object p3

    .line 28
    invoke-virtual {p3}, Lsy0;->u()Ln01;

    move-result-object p3

    .line 29
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iput-object p1, p3, Ln01;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p3, Ln01;->b:Ljava/lang/String;

    .line 33
    const-class p2, Landroid/content/Context;

    invoke-static {p1, p2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 34
    new-instance p1, Lq01;

    iget-object p2, p3, Ln01;->c:Lpz0;

    iget-object p4, p3, Ln01;->a:Landroid/content/Context;

    iget-object p3, p3, Ln01;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p4, p3, v0}, Lq01;-><init>(Lpz0;Landroid/content/Context;Ljava/lang/String;Loz0;)V

    .line 35
    iget-object p1, p1, Lq01;->h:Lmb3;

    invoke-interface {p1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lik2;

    return-object p1
.end method

.method public final zzb(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;I)Lit3;
    .locals 6

    .line 1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lsy0;->b(Landroid/content/Context;Lhg0;I)Lsy0;

    move-result-object p4

    .line 3
    invoke-virtual {p4}, Lsy0;->r()Ll01;

    move-result-object p4

    .line 4
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p4, Ll01;->a:Landroid/content/Context;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p2, p4, Ll01;->c:Lcom/google/android/gms/internal/ads/zzvt;

    .line 9
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p3, p4, Ll01;->b:Ljava/lang/String;

    .line 11
    iget-object p1, p4, Ll01;->a:Landroid/content/Context;

    const-class p2, Landroid/content/Context;

    invoke-static {p1, p2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    iget-object p1, p4, Ll01;->b:Ljava/lang/String;

    const-class p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    iget-object p1, p4, Ll01;->c:Lcom/google/android/gms/internal/ads/zzvt;

    const-class p2, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-static {p1, p2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    new-instance p1, Lo01;

    iget-object v1, p4, Ll01;->d:Lpz0;

    iget-object v2, p4, Ll01;->a:Landroid/content/Context;

    iget-object v3, p4, Ll01;->b:Ljava/lang/String;

    iget-object v4, p4, Ll01;->c:Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo01;-><init>(Lpz0;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvt;Loz0;)V

    .line 15
    iget-object p1, p1, Lo01;->g:Lmb3;

    invoke-interface {p1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr62;

    return-object p1
.end method

.method public final zzb(Lx20;)Lxk0;
    .locals 3

    .line 16
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 19
    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    .line 20
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 21
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzy;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 22
    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzu;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzu;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v1

    .line 23
    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzac;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzac;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 24
    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzaa;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 25
    :cond_5
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzt;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final zzb(Lx20;Lhg0;I)Lzq0;
    .locals 0

    .line 36
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 37
    invoke-static {p1, p2, p3}, Lsy0;->b(Landroid/content/Context;Lhg0;I)Lsy0;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lsy0;->w()Ll72;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;I)Lit3;
    .locals 1

    .line 1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lsy0;->b(Landroid/content/Context;Lhg0;I)Lsy0;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lsy0;->p()La01;

    move-result-object p2

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p3, p2, La01;->b:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p1, p2, La01;->a:Landroid/content/Context;

    .line 9
    const-class p3, Landroid/content/Context;

    invoke-static {p1, p3}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    iget-object p1, p2, La01;->b:Ljava/lang/String;

    const-class p3, Ljava/lang/String;

    invoke-static {p1, p3}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    new-instance p1, Ld01;

    iget-object p3, p2, La01;->c:Lpz0;

    iget-object p4, p2, La01;->a:Landroid/content/Context;

    iget-object p2, p2, La01;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p1, p3, p4, p2, v0}, Ld01;-><init>(Lpz0;Landroid/content/Context;Ljava/lang/String;Loz0;)V

    .line 12
    sget-object p2, Ly40;->Z2:Lo40;

    .line 13
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 14
    invoke-virtual {p3, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 15
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p5, p2, :cond_0

    .line 16
    iget-object p1, p1, Ld01;->i:Lmb3;

    invoke-interface {p1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzg2;

    return-object p1

    .line 17
    :cond_0
    iget-object p1, p1, Ld01;->f:Lmb3;

    invoke-interface {p1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lag2;

    return-object p1
.end method

.method public final zzc(Lx20;Lhg0;I)Ljk0;
    .locals 0

    .line 18
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 19
    invoke-static {p1, p2, p3}, Lsy0;->b(Landroid/content/Context;Lhg0;I)Lsy0;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lsy0;->x()Lcz1;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lx20;)Lzt3;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzd(Lx20;)Lhl0;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
