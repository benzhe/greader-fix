.class public Lyd$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyd;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyd;


# direct methods
.method public constructor <init>(Lyd;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyd$a;->a:Lyd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lyd$a;->a:Lyd;

    .line 4
    :cond_1
    iget-object v0, p1, Lyd;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p1, Lyd;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 6
    monitor-exit v0

    :goto_0
    return-void

    .line 7
    :cond_2
    new-array v2, v1, [Lyd$b;

    .line 8
    iget-object v3, p1, Lyd;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9
    iget-object v3, p1, Lyd;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 11
    aget-object v4, v2, v3

    .line 12
    iget-object v5, v4, Lyd$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    .line 13
    iget-object v7, v4, Lyd$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyd$c;

    .line 14
    iget-boolean v8, v7, Lyd$c;->d:Z

    if-nez v8, :cond_3

    .line 15
    iget-object v7, v7, Lyd$c;->b:Landroid/content/BroadcastReceiver;

    iget-object v8, p1, Lyd;->a:Landroid/content/Context;

    iget-object v9, v4, Lyd$b;->a:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
