.class public final Lhx4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrx4;


# direct methods
.method public constructor <init>(Lrx4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhx4;->a:Lrx4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lhx4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0}, Lox4;->d()V

    .line 4
    invoke-virtual {p0}, Lhx4;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lhx4;->a:Lrx4;

    .line 5
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lqw4;->l:Low4;

    const-string v0, "Install Referrer Reporter is not available"

    .line 7
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lgx4;

    .line 8
    invoke-direct {v0, p0, p1}, Lgx4;-><init>(Lhx4;Ljava/lang/String;)V

    iget-object p1, p0, Lhx4;->a:Lrx4;

    .line 9
    invoke-virtual {p1}, Lrx4;->m()Lox4;

    move-result-object p1

    invoke-virtual {p1}, Lox4;->d()V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 10
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.vending"

    const-string v3, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 11
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lhx4;->a:Lrx4;

    .line 12
    iget-object v1, v1, Lrx4;->a:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lhx4;->a:Lrx4;

    .line 14
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lqw4;->j:Low4;

    const-string v0, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 16
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 19
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 20
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_5

    .line 21
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 22
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    invoke-virtual {p0}, Lhx4;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    .line 25
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 26
    :try_start_0
    invoke-static {}, Lx10;->b()Lx10;

    move-result-object p1

    iget-object v2, p0, Lhx4;->a:Lrx4;

    .line 27
    iget-object v2, v2, Lrx4;->a:Landroid/content/Context;

    const/4 v3, 0x1

    .line 28
    invoke-virtual {p1, v2, v1, v0, v3}, Lx10;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iget-object v0, p0, Lhx4;->a:Lrx4;

    .line 29
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 30
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Install Referrer Service is"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, p1, :cond_3

    const-string p1, "not available"

    goto :goto_0

    :cond_3
    const-string p1, "available"

    .line 31
    :goto_0
    :try_start_1
    invoke-virtual {v0, v1, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    iget-object v0, p0, Lhx4;->a:Lrx4;

    .line 33
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 34
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Exception occurred while binding to Install Referrer Service"

    .line 36
    invoke-virtual {v0, v1, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 37
    :cond_4
    iget-object p1, p0, Lhx4;->a:Lrx4;

    .line 38
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 39
    iget-object p1, p1, Lqw4;->i:Low4;

    const-string v0, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 40
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    iget-object p1, p0, Lhx4;->a:Lrx4;

    .line 41
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 42
    iget-object p1, p1, Lqw4;->l:Low4;

    const-string v0, "Play Service for fetching Install Referrer is unavailable on device"

    .line 43
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_7
    :goto_1
    iget-object p1, p0, Lhx4;->a:Lrx4;

    .line 45
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 46
    iget-object p1, p1, Lqw4;->j:Low4;

    const-string v0, "Install Referrer Reporter was called with invalid app package name"

    .line 47
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lhx4;->a:Lrx4;

    .line 1
    iget-object v1, v1, Lrx4;->a:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lhx4;->a:Lrx4;

    .line 3
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "Failed to get PackageManager for Install Referrer Play Store compatibility check"

    .line 5
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v2, "com.android.vending"

    const/16 v3, 0x80

    .line 6
    iget-object v1, v1, Lh20;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 7
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x4d17ab4

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lhx4;->a:Lrx4;

    .line 8
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 9
    iget-object v2, v2, Lqw4;->n:Low4;

    const-string v3, "Failed to retrieve Play Store version for Install Referrer"

    .line 10
    invoke-virtual {v2, v3, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method
