.class public Lr26;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lo66;

.field public b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lpe5;Lo66;Lno5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lr26;->a:Lo66;

    .line 3
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {p1}, Lpe5;->f()Z

    move-result p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lr26;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    const-class p1, Lne5;

    .line 6
    new-instance p2, Lq26;

    invoke-direct {p2, p0}, Lq26;-><init>(Lr26;)V

    .line 7
    invoke-interface {p3, p1, p2}, Lno5;->a(Ljava/lang/Class;Llo5;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    const-string v0, "firebase_inapp_messaging_auto_data_collection_enabled"

    .line 1
    iget-object v1, p0, Lr26;->a:Lo66;

    .line 2
    iget-object v1, v1, Lo66;->a:Lpe5;

    .line 3
    invoke-virtual {v1}, Lpe5;->a()V

    .line 4
    iget-object v1, v1, Lpe5;->a:Landroid/content/Context;

    .line 5
    check-cast v1, Landroid/app/Application;

    const-string v2, "com.google.firebase.inappmessaging"

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "auto_init"

    .line 7
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lr26;->a:Lo66;

    .line 9
    iget-object v0, v0, Lo66;->a:Lpe5;

    .line 10
    invoke-virtual {v0}, Lpe5;->a()V

    .line 11
    iget-object v0, v0, Lpe5;->a:Landroid/content/Context;

    .line 12
    check-cast v0, Landroid/app/Application;

    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 14
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :cond_0
    return v5

    .line 16
    :cond_1
    iget-object v1, p0, Lr26;->a:Lo66;

    .line 17
    iget-object v1, v1, Lo66;->a:Lpe5;

    .line 18
    invoke-virtual {v1}, Lpe5;->a()V

    .line 19
    iget-object v1, v1, Lpe5;->a:Landroid/content/Context;

    .line 20
    check-cast v1, Landroid/app/Application;

    const/16 v2, 0x80

    .line 21
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 22
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 24
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :catch_0
    :cond_2
    if-eqz v3, :cond_4

    .line 26
    iget-object v1, p0, Lr26;->a:Lo66;

    .line 27
    iget-object v1, v1, Lo66;->a:Lpe5;

    .line 28
    invoke-virtual {v1}, Lpe5;->a()V

    .line 29
    iget-object v1, v1, Lpe5;->a:Landroid/content/Context;

    .line 30
    check-cast v1, Landroid/app/Application;

    .line 31
    :try_start_1
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 32
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 34
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 35
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    return v5

    .line 37
    :cond_4
    iget-object v0, p0, Lr26;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
