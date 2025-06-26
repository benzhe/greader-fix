.class public final Lei0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lwh0;


# direct methods
.method public constructor <init>(Lwh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lei0;->e:Lwh0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lei0;->e:Lwh0;

    .line 2
    iget-object v0, v0, Lwh0;->a:Lng0;

    .line 3
    invoke-interface {v0}, Lng0;->onAdLoaded()V
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
