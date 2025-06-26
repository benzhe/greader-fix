.class public final synthetic Lp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Landroidx/browser/customtabs/CustomTabsService$a;

.field public final synthetic b:Lx3;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/customtabs/CustomTabsService$a;Lx3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3;->a:Landroidx/browser/customtabs/CustomTabsService$a;

    iput-object p2, p0, Lp3;->b:Lx3;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    iget-object v0, p0, Lp3;->a:Landroidx/browser/customtabs/CustomTabsService$a;

    iget-object v1, p0, Lp3;->b:Lx3;

    .line 1
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, v0, Landroidx/browser/customtabs/CustomTabsService;->e:Lm4;

    monitor-enter v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, v1, Lx3;->a:Lm;

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 6
    monitor-exit v3

    goto :goto_1

    .line 7
    :cond_1
    iget-object v5, v0, Landroidx/browser/customtabs/CustomTabsService;->e:Lm4;

    .line 8
    invoke-virtual {v5, v1, v4}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Landroid/os/IBinder$DeathRecipient;

    .line 10
    invoke-interface {v1, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 11
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsService;->e:Lm4;

    invoke-virtual {v0, v1}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method
