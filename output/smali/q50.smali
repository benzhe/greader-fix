.class public final Lq50;
.super Lr50;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/ads/internal/zzg;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr50;-><init>()V

    .line 2
    iput-object p1, p0, Lq50;->e:Lcom/google/android/gms/ads/internal/zzg;

    .line 3
    iput-object p2, p0, Lq50;->f:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lq50;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final R1(Lx20;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lq50;->e:Lcom/google/android/gms/ads/internal/zzg;

    .line 2
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/zzg;->zzh(Landroid/view/View;)V

    return-void
.end method

.method public final e5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq50;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq50;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final recordClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq50;->e:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzg;->zzkg()V

    return-void
.end method

.method public final recordImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq50;->e:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzg;->zzkh()V

    return-void
.end method
