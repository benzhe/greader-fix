.class public final Ljq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lob7<",
        "Len;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkq;

.field public final synthetic b:Ljn;


# direct methods
.method public constructor <init>(Lkq;Ljn;)V
    .locals 0

    iput-object p1, p0, Ljq;->a:Lkq;

    iput-object p2, p0, Ljq;->b:Ljn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnb7;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnb7<",
            "Len;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ljq;->a:Lkq;

    .line 2
    iget-object v0, v0, Lkq;->a:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Ljq;->b:Ljn;

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    .line 4
    new-instance v2, Lfn;

    const/4 v3, 0x0

    .line 5
    invoke-direct {v2, v3, v0, v1}, Lfn;-><init>(Ljava/lang/String;Landroid/content/Context;Ljn;)V

    const-string v0, "BillingClient.newBuilder\u2026                 .build()"

    .line 6
    invoke-static {v2, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "startConnection"

    .line 7
    invoke-static {v3, v1}, Lc88;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    new-instance v1, Ljq$a;

    invoke-direct {v1, p1, v2}, Ljq$a;-><init>(Lnb7;Len;)V

    .line 9
    invoke-virtual {v2}, Lfn;->c()Z

    move-result v3

    const-string v4, "BillingClient"

    if-eqz v3, :cond_0

    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 10
    invoke-static {v4, v0}, Lpr4;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lun;->k:Lin;

    invoke-virtual {v1, v0}, Ljq$a;->a(Lin;)V

    goto/16 :goto_1

    :cond_0
    iget v3, v2, Lfn;->a:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    const-string v0, "Client is already in the process of connecting to billing service."

    .line 12
    invoke-static {v4, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lun;->d:Lin;

    invoke-virtual {v1, v0}, Ljq$a;->a(Lin;)V

    goto/16 :goto_1

    :cond_1
    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 14
    invoke-static {v4, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lun;->l:Lin;

    invoke-virtual {v1, v0}, Ljq$a;->a(Lin;)V

    goto/16 :goto_1

    :cond_2
    iput v5, v2, Lfn;->a:I

    iget-object v3, v2, Lfn;->d:Lyn;

    .line 16
    iget-object v6, v3, Lyn;->b:Lxn;

    iget-object v3, v3, Lyn;->a:Landroid/content/Context;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 17
    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18
    iget-boolean v8, v6, Lxn;->b:Z

    if-nez v8, :cond_3

    iget-object v8, v6, Lxn;->c:Lyn;

    .line 19
    iget-object v8, v8, Lyn;->b:Lxn;

    .line 20
    invoke-virtual {v3, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v5, v6, Lxn;->b:Z

    :cond_3
    const-string v3, "Starting in-app billing setup."

    .line 21
    invoke-static {v4, v3}, Lpr4;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ltn;

    .line 22
    invoke-direct {v3, v2, v1}, Ltn;-><init>(Lfn;Lgn;)V

    iput-object v3, v2, Lfn;->g:Ltn;

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.vending.billing.InAppBillingService.BIND"

    .line 23
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.android.vending"

    .line 24
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v2, Lfn;->e:Landroid/content/Context;

    .line 25
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 26
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 27
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 28
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_6

    .line 29
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 30
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 31
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    new-instance v6, Landroid/content/ComponentName;

    .line 32
    invoke-direct {v6, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    .line 33
    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, v2, Lfn;->b:Ljava/lang/String;

    const-string v6, "playBillingLibraryVersion"

    .line 35
    invoke-virtual {v7, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v2, Lfn;->e:Landroid/content/Context;

    iget-object v6, v2, Lfn;->g:Ltn;

    .line 36
    invoke-virtual {v3, v7, v6, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "Service was bonded successfully."

    .line 37
    invoke-static {v4, v0}, Lpr4;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v3, "Connection to Billing service is blocked."

    .line 38
    invoke-static {v4, v3}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "The device doesn\'t have valid Play Store."

    .line 39
    invoke-static {v4, v3}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_6
    :goto_0
    iput v0, v2, Lfn;->a:I

    const-string v0, "Billing service unavailable on device."

    .line 41
    invoke-static {v4, v0}, Lpr4;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lun;->c:Lin;

    invoke-virtual {v1, v0}, Ljq$a;->a(Lin;)V

    .line 43
    :goto_1
    new-instance v0, Ljq$b;

    invoke-direct {v0, v2}, Ljq$b;-><init>(Len;)V

    check-cast p1, Lje7$a;

    .line 44
    new-instance v1, Lwc7;

    invoke-direct {v1, v0}, Lwc7;-><init>(Lsc7;)V

    .line 45
    iget-object p1, p1, Lje7$a;->f:Lcd7;

    invoke-virtual {p1, v1}, Lcd7;->b(Lic7;)Z

    return-void

    .line 46
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please provide a valid listener for purchases updates."

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please provide a valid Context."

    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
