.class public final synthetic Lbg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyf0;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbg0;->e:Landroid/content/Context;

    iput-object p3, p0, Lbg0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbg0;->e:Landroid/content/Context;

    iget-object v1, p0, Lbg0;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ly40;->a(Landroid/content/Context;)V

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    sget-object v3, Ly40;->a0:Lo40;

    .line 5
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "measurementEnabled"

    .line 8
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    sget-object v3, Ly40;->h0:Lo40;

    .line 10
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 11
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ad_storage"

    const-string v4, "denied"

    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "analytics_storage"

    .line 14
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "FA-Ads"

    const-string v4, "am"

    .line 15
    invoke-static {v0, v3, v4, v1, v2}, Lq34;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lq34;

    move-result-object v1

    .line 16
    iget-object v1, v1, Lq34;->d:Lxr4;

    :try_start_0
    const-string v2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager"

    .line 17
    sget-object v3, Lag0;->a:Lks0;

    invoke-static {v0, v2, v3}, Lc50;->D1(Landroid/content/Context;Ljava/lang/String;Lks0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpy0;

    .line 18
    new-instance v3, Ly20;

    invoke-direct {v3, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lzf0;

    invoke-direct {v0, v1}, Lzf0;-><init>(Lxr4;)V

    invoke-interface {v2, v3, v0}, Lpy0;->G0(Lx20;Lny0;)V
    :try_end_0
    .catch Ljs0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    const-string v1, "#007 Could not call remote method."

    .line 20
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
