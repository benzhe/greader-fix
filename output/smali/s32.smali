.class public final Ls32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwh1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lmp1;

.field public final c:Lll2;

.field public final d:Lcom/google/android/gms/internal/ads/zzbar;

.field public final e:Lsk2;

.field public final f:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Lfp1;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lxw0;

.field public final h:Lob0;

.field public final i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmp1;Lll2;Lcom/google/android/gms/internal/ads/zzbar;Lsk2;Law2;Lxw0;Lob0;ZLt32;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls32;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ls32;->b:Lmp1;

    .line 4
    iput-object p3, p0, Ls32;->c:Lll2;

    .line 5
    iput-object p4, p0, Ls32;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 6
    iput-object p5, p0, Ls32;->e:Lsk2;

    .line 7
    iput-object p6, p0, Ls32;->f:Law2;

    .line 8
    iput-object p7, p0, Ls32;->g:Lxw0;

    .line 9
    iput-object p8, p0, Ls32;->h:Lob0;

    .line 10
    iput-boolean p9, p0, Ls32;->i:Z

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Ls32;->f:Law2;

    invoke-static {v0}, Lvt2;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfp1;

    .line 2
    :try_start_0
    iget-object v2, v1, Ls32;->e:Lsk2;

    .line 3
    iget-object v3, v1, Ls32;->g:Lxw0;

    invoke-interface {v3}, Lxw0;->q()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 4
    iget-object v2, v1, Ls32;->g:Lxw0;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v3, Ly40;->v0:Lo40;

    .line 6
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v5, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    iget-object v2, v1, Ls32;->g:Lxw0;

    :goto_0
    move-object v11, v2

    goto :goto_2

    .line 10
    :cond_1
    iget-object v3, v1, Ls32;->b:Lmp1;

    iget-object v5, v1, Ls32;->c:Lll2;

    iget-object v5, v5, Lll2;->e:Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v6, 0x0

    .line 11
    invoke-virtual {v3, v5, v6, v6}, Lmp1;->a(Lcom/google/android/gms/internal/ads/zzvt;Lsk2;Lwk2;)Lxw0;

    move-result-object v3

    .line 12
    invoke-virtual {v0}, Lfp1;->l()Lcg1;

    move-result-object v5

    .line 13
    new-instance v7, Lac0;

    invoke-direct {v7, v5}, Lac0;-><init>(Lzb0;)V

    const-string v5, "/reward"

    invoke-interface {v3, v5, v7}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 14
    new-instance v5, Lcq1;

    invoke-direct {v5}, Lcq1;-><init>()V

    .line 15
    invoke-interface {v3}, Lxw0;->getView()Landroid/view/View;

    .line 16
    invoke-virtual {v0}, Lfp1;->h()Lop1;

    move-result-object v7

    .line 17
    iget-boolean v8, v1, Ls32;->i:Z

    if-eqz v8, :cond_2

    iget-object v8, v1, Ls32;->h:Lob0;

    goto :goto_1

    :cond_2
    move-object v8, v6

    .line 18
    :goto_1
    invoke-virtual {v7, v3, v4, v8}, Lop1;->b(Lxw0;ZLob0;)V

    .line 19
    invoke-interface {v3}, Lxw0;->I()Lhy0;

    move-result-object v7

    new-instance v8, Lv32;

    invoke-direct {v8, v5, v3}, Lv32;-><init>(Lcq1;Lxw0;)V

    .line 20
    check-cast v7, Lww0;

    .line 21
    iput-object v8, v7, Lww0;->k:Lgy0;

    .line 22
    invoke-interface {v3}, Lxw0;->I()Lhy0;

    move-result-object v5

    .line 23
    new-instance v7, Lu32;

    invoke-direct {v7, v3}, Lu32;-><init>(Lxw0;)V

    .line 24
    check-cast v5, Lww0;

    .line 25
    iput-object v7, v5, Lww0;->l:Liy0;

    .line 26
    iget-object v2, v2, Lsk2;->r:Lzk2;

    iget-object v5, v2, Lzk2;->b:Ljava/lang/String;

    iget-object v2, v2, Lzk2;->a:Ljava/lang/String;

    invoke-interface {v3, v5, v2, v6}, Lxw0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lix0; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v3

    .line 27
    :goto_2
    invoke-interface {v11, v4}, Lxw0;->W(Z)V

    .line 28
    new-instance v2, Lcom/google/android/gms/ads/internal/zzk;

    .line 29
    iget-boolean v3, v1, Ls32;->i:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 30
    iget-object v3, v1, Ls32;->h:Lob0;

    invoke-virtual {v3, v5}, Lob0;->a(Z)Z

    move-result v3

    move v13, v3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 31
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v3, v1, Ls32;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzj;->zzba(Landroid/content/Context;)Z

    move-result v14

    .line 32
    iget-boolean v3, v1, Ls32;->i:Z

    if-eqz v3, :cond_4

    iget-object v3, v1, Ls32;->h:Lob0;

    invoke-virtual {v3}, Lob0;->b()Z

    move-result v3

    move v15, v3

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 33
    :goto_4
    iget-boolean v3, v1, Ls32;->i:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Ls32;->h:Lob0;

    invoke-virtual {v3}, Lob0;->c()F

    move-result v3

    move/from16 v16, v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_5
    const/16 v17, -0x1

    iget-object v3, v1, Ls32;->e:Lsk2;

    iget-boolean v5, v3, Lsk2;->J:Z

    iget-boolean v3, v3, Lsk2;->K:Z

    move-object v12, v2

    move/from16 v18, p1

    move/from16 v19, v5

    move/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/zzk;-><init>(ZZZFIZZZ)V

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzku()Lcom/google/android/gms/ads/internal/overlay/zzo;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v8, 0x0

    .line 35
    invoke-virtual {v0}, Lfp1;->i()Lnh1;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v0, v1, Ls32;->e:Lsk2;

    iget v12, v0, Lsk2;->L:I

    iget-object v13, v1, Ls32;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v14, v0, Lsk2;->A:Ljava/lang/String;

    iget-object v0, v0, Lsk2;->r:Lzk2;

    iget-object v5, v0, Lzk2;->b:Ljava/lang/String;

    iget-object v0, v0, Lzk2;->a:Ljava/lang/String;

    iget-object v6, v1, Ls32;->c:Lll2;

    iget-object v6, v6, Lll2;->f:Ljava/lang/String;

    move-object v7, v3

    move-object v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lxw0;ILcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    .line 36
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, ""

    .line 37
    invoke-static {v2, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
