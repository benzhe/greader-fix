.class public final La40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lb40;


# direct methods
.method public constructor <init>(Lb40;)V
    .locals 0

    .line 1
    iput-object p1, p0, La40;->e:Lb40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, La40;->e:Lb40;

    .line 2
    iget-object v0, v0, Lb40;->f:Lpn0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Lpn0;->onRewardedVideoAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onRewardedVideoAdFailedToLoad event."

    .line 4
    invoke-static {v1, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
