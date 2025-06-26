.class public final Lzh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/ads/AdRequest$ErrorCode;

.field public final synthetic f:Lwh0;


# direct methods
.method public constructor <init>(Lwh0;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzh0;->f:Lwh0;

    iput-object p2, p0, Lzh0;->e:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lzh0;->f:Lwh0;

    .line 2
    iget-object v0, v0, Lwh0;->a:Lng0;

    .line 3
    iget-object v1, p0, Lzh0;->e:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-static {v1}, Lc50;->Z0(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lng0;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
