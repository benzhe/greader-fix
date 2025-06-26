.class public final synthetic Lxm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# instance fields
.field public final a:Lym0;


# direct methods
.method public constructor <init>(Lym0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxm0;->a:Lym0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lxm0;->a:Lym0;

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    iget-object v1, v0, Lym0;->b:Landroid/content/Context;

    .line 2
    sget-object v2, Ly40;->a:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->e:Lv40;

    const/4 v2, 0x0

    const-string v3, "google_ads_flags"

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 6
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->d:Lt40;

    .line 7
    iget-object v2, v2, Lt40;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo40;

    .line 8
    iget v4, v3, Lo40;->a:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 9
    invoke-virtual {v3, p1}, Lo40;->i(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lo40;->f(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "flag_configuration"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    const-string p1, "Flag Json is null."

    .line 11
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 12
    :goto_1
    sget-object p1, Los3;->j:Los3;

    iget-object p1, p1, Los3;->e:Lv40;

    .line 13
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 14
    iget-object p1, v0, Lym0;->c:Landroid/content/SharedPreferences;

    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    const-string v2, "js_last_update"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    return-object p1
.end method
