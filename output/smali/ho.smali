.class public final Lho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lhn;

.field public final synthetic f:Lcom/android/billingclient/api/SkuDetails;

.field public final synthetic g:Lfn;


# direct methods
.method public constructor <init>(Lfn;Lhn;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 0

    iput-object p1, p0, Lho;->g:Lfn;

    iput-object p2, p0, Lho;->e:Lhn;

    iput-object p3, p0, Lho;->f:Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lho;->g:Lfn;

    .line 1
    iget-object v1, v0, Lfn;->f:Lsr4;

    .line 2
    iget-object v0, v0, Lfn;->e:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v4, p0, Lho;->e:Lhn;

    .line 4
    iget-object v4, v4, Lhn;->c:Ljava/lang/String;

    aput-object v4, v0, v2

    const/4 v2, 0x5

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lho;->f:Lcom/android/billingclient/api/SkuDetails;

    .line 6
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v6, "subs"

    .line 7
    invoke-interface/range {v1 .. v7}, Lsr4;->B4(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
