.class public final Lw50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnb3;


# instance fields
.field public a:Lw3;

.field public b:Lt3;

.field public c:Lv3;

.field public d:Lz50;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "http://www.example.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 4
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 7
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 9
    invoke-static {p0}, Lc50;->D3(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lw50;->b:Lt3;

    .line 2
    iput-object v0, p0, Lw50;->a:Lw3;

    .line 3
    iget-object v0, p0, Lw50;->d:Lz50;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lxw;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b(Lt3;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lw50;->b:Lt3;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object p1, p1, Lt3;->a:Ln;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Ln;->f3(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    iget-object p1, p0, Lw50;->d:Lz50;

    if-eqz p1, :cond_7

    .line 5
    check-cast p1, Lxw;

    .line 6
    iget-object v0, p1, Lxw;->a:Lw50;

    .line 7
    iget-object v1, v0, Lw50;->b:Lt3;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 8
    iput-object v2, v0, Lw50;->a:Lw3;

    goto :goto_2

    .line 9
    :cond_0
    iget-object v3, v0, Lw50;->a:Lw3;

    if-nez v3, :cond_2

    .line 10
    new-instance v3, Ls3;

    invoke-direct {v3, v1, v2}, Ls3;-><init>(Lt3;Lr3;)V

    .line 11
    :try_start_1
    iget-object v4, v1, Lt3;->a:Ln;

    invoke-interface {v4, v3}, Ln;->s4(Lm;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v4, Lw3;

    iget-object v5, v1, Lt3;->a:Ln;

    iget-object v1, v1, Lt3;->b:Landroid/content/ComponentName;

    invoke-direct {v4, v5, v3, v1, v2}, Lw3;-><init>(Ln;Lm;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    goto :goto_1

    :catch_1
    :goto_0
    move-object v4, v2

    .line 13
    :goto_1
    iput-object v4, v0, Lw50;->a:Lw3;

    .line 14
    :cond_2
    :goto_2
    iget-object v0, v0, Lw50;->a:Lw3;

    .line 15
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string v4, "android.support.customtabs.extra.SESSION"

    if-eqz v0, :cond_4

    .line 16
    iget-object v5, v0, Lw3;->c:Landroid/content/ComponentName;

    .line 17
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object v5, v0, Lw3;->b:Lm;

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 19
    iget-object v0, v0, Lw3;->d:Landroid/app/PendingIntent;

    .line 20
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 21
    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    if-eqz v0, :cond_3

    const-string v5, "android.support.customtabs.extra.SESSION_ID"

    .line 22
    invoke-virtual {v6, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    :cond_3
    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 24
    :cond_4
    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_5
    const-string v0, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 28
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v3, "androidx.browser.customtabs.extra.SHARE_STATE"

    .line 31
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    iget-object v0, p1, Lxw;->b:Landroid/content/Context;

    iget-object v3, p1, Lxw;->c:Landroid/net/Uri;

    .line 33
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    sget-object v3, Lu7;->a:Ljava/lang/Object;

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p1, Lxw;->a:Lw50;

    iget-object p1, p1, Lxw;->b:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    .line 37
    iget-object v1, v0, Lw50;->c:Lv3;

    if-nez v1, :cond_6

    goto :goto_3

    .line 38
    :cond_6
    invoke-virtual {p1, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 39
    iput-object v2, v0, Lw50;->b:Lt3;

    .line 40
    iput-object v2, v0, Lw50;->a:Lw3;

    .line 41
    iput-object v2, v0, Lw50;->c:Lv3;

    :cond_7
    :goto_3
    return-void
.end method
