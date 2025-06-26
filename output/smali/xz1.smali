.class public final Lxz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwh1;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbar;

.field public final b:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Lx31;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lsk2;

.field public final d:Lxw0;

.field public final e:Lll2;

.field public final f:Lob0;

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbar;Law2;Lsk2;Lxw0;Lll2;ZLob0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Law2<",
            "Lx31;",
            ">;",
            "Lsk2;",
            "Lxw0;",
            "Lll2;",
            "Z",
            "Lob0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxz1;->a:Lcom/google/android/gms/internal/ads/zzbar;

    .line 3
    iput-object p2, p0, Lxz1;->b:Law2;

    .line 4
    iput-object p3, p0, Lxz1;->c:Lsk2;

    .line 5
    iput-object p4, p0, Lxz1;->d:Lxw0;

    .line 6
    iput-object p5, p0, Lxz1;->e:Lll2;

    .line 7
    iput-boolean p6, p0, Lxz1;->g:Z

    .line 8
    iput-object p7, p0, Lxz1;->f:Lob0;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lxz1;->b:Law2;

    invoke-static {v1}, Lvt2;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx31;

    .line 2
    iget-object v2, v0, Lxz1;->d:Lxw0;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lxw0;->W(Z)V

    .line 3
    new-instance v2, Lcom/google/android/gms/ads/internal/zzk;

    .line 4
    iget-boolean v4, v0, Lxz1;->g:Z

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, v0, Lxz1;->f:Lob0;

    invoke-virtual {v4, v3}, Lob0;->a(Z)Z

    move-result v4

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x1

    .line 6
    iget-boolean v4, v0, Lxz1;->g:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lxz1;->f:Lob0;

    invoke-virtual {v4}, Lob0;->b()Z

    move-result v4

    move v7, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 7
    :goto_1
    iget-boolean v4, v0, Lxz1;->g:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lxz1;->f:Lob0;

    invoke-virtual {v4}, Lob0;->c()F

    move-result v4

    move v8, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v9, -0x1

    iget-object v4, v0, Lxz1;->c:Lsk2;

    iget-boolean v11, v4, Lsk2;->J:Z

    const/4 v12, 0x0

    move-object v4, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzk;-><init>(ZZZFIZZZ)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzku()Lcom/google/android/gms/ads/internal/overlay/zzo;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v1}, Lx31;->j()Lnh1;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v0, Lxz1;->d:Lxw0;

    .line 10
    iget-object v1, v0, Lxz1;->c:Lsk2;

    iget v1, v1, Lsk2;->L:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    :goto_3
    move v9, v1

    goto :goto_4

    .line 11
    :cond_3
    iget-object v1, v0, Lxz1;->e:Lll2;

    iget-object v1, v1, Lll2;->j:Lcom/google/android/gms/internal/ads/zzwc;

    if-eqz v1, :cond_5

    .line 12
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzwc;->e:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x7

    const/4 v9, 0x7

    goto :goto_4

    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    const/4 v1, 0x6

    const/4 v9, 0x6

    goto :goto_4

    :cond_5
    const-string v1, "Error setting app open orientation; no targeting orientation available."

    .line 13
    invoke-static {v1}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Lxz1;->c:Lsk2;

    iget v1, v1, Lsk2;->L:I

    goto :goto_3

    .line 15
    :goto_4
    iget-object v10, v0, Lxz1;->a:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v1, v0, Lxz1;->c:Lsk2;

    iget-object v11, v1, Lsk2;->A:Ljava/lang/String;

    iget-object v1, v1, Lsk2;->r:Lzk2;

    iget-object v13, v1, Lzk2;->b:Ljava/lang/String;

    iget-object v14, v1, Lzk2;->a:Ljava/lang/String;

    iget-object v1, v0, Lxz1;->e:Lll2;

    iget-object v1, v1, Lll2;->f:Ljava/lang/String;

    move-object v4, v15

    move-object v12, v2

    move-object v2, v15

    move-object v15, v1

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lxw0;ILcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p2

    .line 16
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
