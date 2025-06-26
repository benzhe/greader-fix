.class public final Lco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcn;

.field public final synthetic f:Ldn;

.field public final synthetic g:Lfn;


# direct methods
.method public constructor <init>(Lfn;Lcn;Ldn;)V
    .locals 0

    iput-object p1, p0, Lco;->g:Lfn;

    iput-object p2, p0, Lco;->e:Lcn;

    iput-object p3, p0, Lco;->f:Ldn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lco;->g:Lfn;

    .line 1
    iget-object v1, v0, Lfn;->f:Lsr4;

    .line 2
    iget-object v0, v0, Lfn;->e:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lco;->e:Lcn;

    .line 4
    iget-object v2, v2, Lcn;->a:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lco;->g:Lfn;

    .line 6
    iget-object v3, v3, Lfn;->b:Ljava/lang/String;

    const/16 v4, 0x9

    .line 7
    sget v5, Lpr4;->a:I

    new-instance v5, Landroid/os/Bundle;

    .line 8
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "playBillingLibraryVersion"

    .line 9
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v1, v4, v0, v2, v5}, Lsr4;->x0(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "BillingClient"

    .line 11
    invoke-static {v0, v1}, Lpr4;->d(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    .line 12
    invoke-static {v0, v1}, Lpr4;->e(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco;->g:Lfn;

    new-instance v3, Lbo;

    .line 13
    invoke-direct {v3, p0, v2, v0}, Lbo;-><init>(Lco;ILjava/lang/String;)V

    invoke-static {v1, v3}, Lfn;->h(Lfn;Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lco;->g:Lfn;

    new-instance v2, Lao;

    .line 14
    invoke-direct {v2, p0, v0}, Lao;-><init>(Lco;Ljava/lang/Exception;)V

    invoke-static {v1, v2}, Lfn;->h(Lfn;Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
