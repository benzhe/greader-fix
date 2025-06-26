.class public final Lip3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lvd3;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Ly40;->a(Landroid/content/Context;)V

    .line 13
    sget-object v0, Ly40;->N2:Lo40;

    .line 14
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 15
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    .line 17
    sget-object v1, Lkp3;->a:Lks0;

    .line 18
    invoke-static {p1, v0, v1}, Lc50;->D1(Landroid/content/Context;Ljava/lang/String;Lks0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvd3;

    iput-object v0, p0, Lip3;->a:Lvd3;

    .line 19
    new-instance v0, Ly20;

    invoke-direct {v0, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lip3;->a:Lvd3;

    .line 21
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    const-string p1, "GMA_SDK"

    .line 22
    invoke-interface {v0, v1, p1}, Lvd3;->l1(Lx20;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lip3;->b:Z
    :try_end_0
    .catch Ljs0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Cannot dynamite load clearcut"

    .line 24
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ly40;->a(Landroid/content/Context;)V

    :try_start_0
    const-string v0, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    .line 3
    sget-object v1, Lhp3;->a:Lks0;

    .line 4
    invoke-static {p1, v0, v1}, Lc50;->D1(Landroid/content/Context;Ljava/lang/String;Lks0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvd3;

    iput-object v0, p0, Lip3;->a:Lvd3;

    .line 5
    new-instance v0, Ly20;

    invoke-direct {v0, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lip3;->a:Lvd3;

    .line 7
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 8
    invoke-interface {v0, v1, p2, p1}, Lvd3;->H3(Lx20;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lip3;->b:Z
    :try_end_0
    .catch Ljs0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Cannot dynamite load clearcut"

    .line 10
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a([B)Lqq3;
    .locals 2

    .line 1
    new-instance v0, Lqq3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lqq3;-><init>(Lip3;[BLjp3;)V

    return-object v0
.end method
