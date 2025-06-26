.class public final Lpn;
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
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Lln;

.field public final synthetic h:Lfn;


# direct methods
.method public constructor <init>(Lfn;Ljava/lang/String;Ljava/util/List;Lln;)V
    .locals 0

    iput-object p1, p0, Lpn;->h:Lfn;

    iput-object p2, p0, Lpn;->e:Ljava/lang/String;

    iput-object p3, p0, Lpn;->f:Ljava/util/List;

    iput-object p4, p0, Lpn;->g:Lln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lpn;->h:Lfn;

    iget-object v8, v1, Lpn;->e:Ljava/lang/String;

    iget-object v9, v1, Lpn;->f:Ljava/util/List;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "BillingClient"

    new-instance v11, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/4 v2, 0x0

    :goto_0
    const/4 v14, 0x0

    if-ge v2, v12, :cond_8

    add-int/lit8 v15, v2, 0x14

    if-le v15, v12, :cond_0

    move v3, v12

    goto :goto_1

    :cond_0
    move v3, v15

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    .line 4
    invoke-interface {v9, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 6
    check-cast v6, Lwn;

    .line 7
    iget-object v6, v6, Lwn;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    new-instance v6, Landroid/os/Bundle;

    .line 9
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    .line 10
    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, v0, Lfn;->b:Ljava/lang/String;

    const-string v3, "playBillingLibraryVersion"

    .line 11
    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v2, v0, Lfn;->m:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lfn;->f:Lsr4;

    iget-object v3, v0, Lfn;->e:Landroid/content/Context;

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v3, v0, Lfn;->j:I

    iget-boolean v7, v0, Lfn;->q:Z

    iget-object v13, v0, Lfn;->b:Ljava/lang/String;

    const/16 v16, 0xa

    .line 13
    invoke-static {v3, v7, v13, v14, v4}, Lpr4;->f(IZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v7

    move/from16 v3, v16

    move-object v4, v5

    move-object v5, v8

    .line 14
    invoke-interface/range {v2 .. v7}, Lsr4;->q3(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_3

    .line 15
    :cond_2
    iget-object v2, v0, Lfn;->f:Lsr4;

    const/4 v3, 0x3

    iget-object v4, v0, Lfn;->e:Landroid/content/Context;

    .line 16
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-interface {v2, v3, v4, v8, v6}, Lsr4;->U4(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    const-string v3, "Item is unavailable for purchase."

    const/4 v4, 0x4

    if-nez v2, :cond_3

    const-string v0, "querySkuDetailsAsync got null sku details list"

    .line 18
    invoke-static {v10, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lvn;

    .line 19
    invoke-direct {v0, v4, v3, v14}, Lvn;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_5

    :cond_3
    const-string v5, "DETAILS_LIST"

    .line 20
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x6

    if-nez v6, :cond_5

    .line 21
    invoke-static {v2, v10}, Lpr4;->d(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 22
    invoke-static {v2, v10}, Lpr4;->e(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "getSkuDetails() failed. Response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v10, v3}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lvn;

    .line 25
    invoke-direct {v3, v0, v2, v11}, Lvn;-><init>(ILjava/lang/String;Ljava/util/List;)V

    move-object v0, v3

    goto/16 :goto_5

    :cond_4
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 26
    invoke-static {v10, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lvn;

    .line 27
    invoke-direct {v0, v7, v2, v11}, Lvn;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_5

    .line 28
    :cond_5
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v3, 0x0

    .line 29
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_1
    new-instance v5, Lcom/android/billingclient/api/SkuDetails;

    .line 31
    invoke-direct {v5, v4}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x11

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Got sku details: "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lpr4;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_0
    const-string v0, "Got a JSON exception trying to decode SkuDetails."

    .line 34
    invoke-static {v10, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lvn;

    const-string v2, "Error trying to decode SkuDetails."

    .line 35
    invoke-direct {v0, v7, v2, v14}, Lvn;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_5

    :cond_6
    move v2, v15

    goto/16 :goto_0

    :cond_7
    const-string v0, "querySkuDetailsAsync got null response list"

    .line 36
    invoke-static {v10, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lvn;

    .line 37
    invoke-direct {v0, v4, v3, v14}, Lvn;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_5

    :catch_1
    move-exception v0

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3f

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lvn;

    const/4 v2, -0x1

    const-string v3, "Service connection is disconnected."

    .line 39
    invoke-direct {v0, v2, v3, v14}, Lvn;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_5

    .line 40
    :cond_8
    new-instance v0, Lvn;

    const-string v2, ""

    const/4 v3, 0x0

    .line 41
    invoke-direct {v0, v3, v2, v11}, Lvn;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 42
    :goto_5
    iget-object v2, v1, Lpn;->h:Lfn;

    new-instance v3, Lon;

    .line 43
    invoke-direct {v3, v1, v0}, Lon;-><init>(Lpn;Lvn;)V

    invoke-static {v2, v3}, Lfn;->h(Lfn;Ljava/lang/Runnable;)V

    return-object v14
.end method
