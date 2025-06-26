.class public final Lmn;
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
.field public final synthetic e:Lcom/android/billingclient/api/SkuDetails;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lfn;


# direct methods
.method public constructor <init>(Lfn;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmn;->g:Lfn;

    iput-object p2, p0, Lmn;->e:Lcom/android/billingclient/api/SkuDetails;

    iput-object p3, p0, Lmn;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lmn;->g:Lfn;

    .line 1
    iget-object v1, v0, Lfn;->f:Lsr4;

    const/4 v2, 0x3

    .line 2
    iget-object v0, v0, Lfn;->e:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lmn;->e:Lcom/android/billingclient/api/SkuDetails;

    .line 4
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmn;->f:Ljava/lang/String;

    const/4 v6, 0x0

    .line 5
    invoke-interface/range {v1 .. v6}, Lsr4;->R0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
