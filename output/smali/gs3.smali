.class public final Lgs3;
.super Lms3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lms3<",
        "Lit3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzvt;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lhg0;

.field public final synthetic f:Lwr3;


# direct methods
.method public constructor <init>(Lwr3;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgs3;->f:Lwr3;

    iput-object p2, p0, Lgs3;->b:Landroid/content/Context;

    iput-object p3, p0, Lgs3;->c:Lcom/google/android/gms/internal/ads/zzvt;

    iput-object p4, p0, Lgs3;->d:Ljava/lang/String;

    iput-object p5, p0, Lgs3;->e:Lhg0;

    invoke-direct {p0}, Lms3;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqt3;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgs3;->b:Landroid/content/Context;

    .line 2
    new-instance v2, Ly20;

    invoke-direct {v2, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v3, p0, Lgs3;->c:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v4, p0, Lgs3;->d:Ljava/lang/String;

    iget-object v5, p0, Lgs3;->e:Lhg0;

    const v6, 0xc365f90

    move-object v1, p1

    .line 4
    invoke-interface/range {v1 .. v6}, Lqt3;->zzb(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;I)Lit3;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lgs3;->b:Landroid/content/Context;

    const-string v1, "interstitial"

    invoke-static {v0, v1}, Lwr3;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lt30;

    invoke-direct {v0}, Lt30;-><init>()V

    return-object v0
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgs3;->f:Lwr3;

    .line 2
    iget-object v1, v0, Lwr3;->a:Lmr3;

    .line 3
    iget-object v2, p0, Lgs3;->b:Landroid/content/Context;

    iget-object v3, p0, Lgs3;->c:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v4, p0, Lgs3;->d:Ljava/lang/String;

    iget-object v5, p0, Lgs3;->e:Lhg0;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lmr3;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;I)Lit3;

    move-result-object v0

    return-object v0
.end method
