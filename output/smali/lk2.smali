.class public final Llk2;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Llu3;

.field public final synthetic b:Lik2;


# direct methods
.method public constructor <init>(Lik2;Llu3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llk2;->b:Lik2;

    iput-object p2, p0, Llk2;->a:Llu3;

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Llk2;->b:Lik2;

    .line 2
    iget-object v0, v0, Lik2;->k:Ldp1;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Llk2;->a:Llu3;

    invoke-interface {v0}, Llu3;->onAdMetadataChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
