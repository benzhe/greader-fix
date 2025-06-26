.class public final Lo12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwh1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/zzbar;

.field public final c:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Lsg1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lsk2;

.field public final e:Lxw0;

.field public final f:Lll2;

.field public final g:Lob0;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Law2;Lsk2;Lxw0;Lll2;ZLob0;Ll12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo12;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lo12;->b:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    iput-object p3, p0, Lo12;->c:Law2;

    .line 5
    iput-object p4, p0, Lo12;->d:Lsk2;

    .line 6
    iput-object p5, p0, Lo12;->e:Lxw0;

    .line 7
    iput-object p6, p0, Lo12;->f:Lll2;

    .line 8
    iput-object p8, p0, Lo12;->g:Lob0;

    .line 9
    iput-boolean p7, p0, Lo12;->h:Z

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lo12;->c:Law2;

    invoke-static {v1}, Lvt2;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsg1;

    .line 2
    iget-object v2, v0, Lo12;->e:Lxw0;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lxw0;->W(Z)V

    .line 3
    new-instance v2, Lcom/google/android/gms/ads/internal/zzk;

    .line 4
    iget-boolean v4, v0, Lo12;->h:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, v0, Lo12;->g:Lob0;

    invoke-virtual {v4, v5}, Lob0;->a(Z)Z

    move-result v4

    move v6, v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 6
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v4, v0, Lo12;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzj;->zzba(Landroid/content/Context;)Z

    move-result v7

    .line 7
    iget-boolean v4, v0, Lo12;->h:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lo12;->g:Lob0;

    invoke-virtual {v4}, Lob0;->b()Z

    move-result v4

    move v8, v4

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 8
    :goto_1
    iget-boolean v4, v0, Lo12;->h:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lo12;->g:Lob0;

    invoke-virtual {v4}, Lob0;->c()F

    move-result v4

    move v9, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_2
    const/4 v10, -0x1

    iget-object v4, v0, Lo12;->d:Lsk2;

    iget-boolean v11, v4, Lsk2;->J:Z

    const/4 v12, 0x0

    move-object v4, v2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzk;-><init>(ZZZFIZZZ)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzku()Lcom/google/android/gms/ads/internal/overlay/zzo;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v1}, Lsg1;->i()Lnh1;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v0, Lo12;->e:Lxw0;

    iget-object v1, v0, Lo12;->d:Lsk2;

    iget v9, v1, Lsk2;->L:I

    iget-object v10, v0, Lo12;->b:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v11, v1, Lsk2;->A:Ljava/lang/String;

    iget-object v1, v1, Lsk2;->r:Lzk2;

    iget-object v13, v1, Lzk2;->b:Ljava/lang/String;

    iget-object v14, v1, Lzk2;->a:Ljava/lang/String;

    iget-object v1, v0, Lo12;->f:Lll2;

    iget-object v1, v1, Lll2;->f:Ljava/lang/String;

    move-object v4, v15

    move-object v12, v2

    move-object v2, v15

    move-object v15, v1

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lxw0;ILcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p2

    .line 11
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
