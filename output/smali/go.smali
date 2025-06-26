.class public final Lgo;
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
.field public final synthetic e:I

.field public final synthetic f:Lcom/android/billingclient/api/SkuDetails;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:Lfn;


# direct methods
.method public constructor <init>(Lfn;ILcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lhn;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lgo;->i:Lfn;

    iput p2, p0, Lgo;->e:I

    iput-object p3, p0, Lgo;->f:Lcom/android/billingclient/api/SkuDetails;

    iput-object p4, p0, Lgo;->g:Ljava/lang/String;

    iput-object p6, p0, Lgo;->h:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lgo;->i:Lfn;

    .line 1
    iget-object v1, v0, Lfn;->f:Lsr4;

    .line 2
    iget v2, p0, Lgo;->e:I

    .line 3
    iget-object v0, v0, Lfn;->e:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lgo;->f:Lcom/android/billingclient/api/SkuDetails;

    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgo;->g:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lgo;->h:Landroid/os/Bundle;

    .line 6
    invoke-interface/range {v1 .. v7}, Lsr4;->E4(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
