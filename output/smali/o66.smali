.class public Lo66;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpe5;


# direct methods
.method public constructor <init>(Lpe5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo66;->a:Lpe5;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lo66;->a:Lpe5;

    .line 2
    invoke-virtual {v0}, Lpe5;->a()V

    .line 3
    iget-object v0, v0, Lpe5;->a:Landroid/content/Context;

    .line 4
    check-cast v0, Landroid/app/Application;

    const-string v1, "com.google.firebase.inappmessaging"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lo66;->b(Ljava/lang/String;Z)V

    return p2
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo66;->a:Lpe5;

    .line 2
    invoke-virtual {v0}, Lpe5;->a()V

    .line 3
    iget-object v0, v0, Lpe5;->a:Landroid/content/Context;

    .line 4
    check-cast v0, Landroid/app/Application;

    const/4 v1, 0x0

    const-string v2, "com.google.firebase.inappmessaging"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
