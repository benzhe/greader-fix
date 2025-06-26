.class public final Lbp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzb0;


# instance fields
.field public final e:Ldb1;

.field public final f:Lcom/google/android/gms/internal/ads/zzavy;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldb1;Lsk2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbp1;->e:Ldb1;

    .line 3
    iget-object p1, p2, Lsk2;->l:Lcom/google/android/gms/internal/ads/zzavy;

    iput-object p1, p0, Lbp1;->f:Lcom/google/android/gms/internal/ads/zzavy;

    .line 4
    iget-object p1, p2, Lsk2;->j:Ljava/lang/String;

    iput-object p1, p0, Lbp1;->g:Ljava/lang/String;

    .line 5
    iget-object p1, p2, Lsk2;->k:Ljava/lang/String;

    iput-object p1, p0, Lbp1;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbp1;->e:Ldb1;

    .line 2
    sget-object v1, Lkb1;->a:Lzd1;

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final x(Lcom/google/android/gms/internal/ads/zzavy;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lbp1;->f:Lcom/google/android/gms/internal/ads/zzavy;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzavy;->e:Ljava/lang/String;

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzavy;->f:I

    goto :goto_0

    :cond_1
    const-string v0, ""

    const/4 p1, 0x1

    .line 4
    :goto_0
    new-instance v1, Lfn0;

    invoke-direct {v1, v0, p1}, Lfn0;-><init>(Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lbp1;->e:Ldb1;

    iget-object v0, p0, Lbp1;->g:Ljava/lang/String;

    iget-object v2, p0, Lbp1;->h:Ljava/lang/String;

    .line 6
    new-instance v3, Lhb1;

    invoke-direct {v3, v1, v0, v2}, Lhb1;-><init>(Lgn0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final x0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbp1;->e:Ldb1;

    .line 2
    sget-object v1, Lib1;->a:Lzd1;

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    return-void
.end method
