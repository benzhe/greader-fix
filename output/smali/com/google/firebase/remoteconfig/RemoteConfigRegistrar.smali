.class public Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxf5;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getComponents$0(Ltf5;)Lrb6;
    .locals 7

    .line 1
    new-instance v6, Lrb6;

    const-class v0, Landroid/content/Context;

    .line 2
    invoke-interface {p0, v0}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lpe5;

    .line 3
    invoke-interface {p0, v0}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lpe5;

    const-class v0, Lz96;

    .line 4
    invoke-interface {p0, v0}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lz96;

    const-class v0, Lze5;

    .line 5
    invoke-interface {p0, v0}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lze5;

    const-string v4, "frc"

    invoke-virtual {v0, v4}, Lze5;->a(Ljava/lang/String;)Lye5;

    move-result-object v4

    const-class v0, Lbf5;

    .line 6
    invoke-interface {p0, v0}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lbf5;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lrb6;-><init>(Landroid/content/Context;Lpe5;Lz96;Lye5;Lbf5;)V

    return-object v6
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsf5<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lsf5;

    .line 1
    const-class v1, Lrb6;

    .line 2
    invoke-static {v1}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 3
    new-instance v3, Lig5;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lpe5;

    .line 5
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lz96;

    .line 7
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lze5;

    .line 9
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lbf5;

    .line 11
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v5, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 12
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v2, Lsb6;->a:Lsb6;

    .line 13
    invoke-virtual {v1, v2}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 14
    invoke-virtual {v1}, Lsf5$b;->c()Lsf5$b;

    .line 15
    invoke-virtual {v1}, Lsf5$b;->b()Lsf5;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-rc"

    const-string v2, "20.0.2"

    .line 16
    invoke-static {v1, v2}, Ln56;->F(Ljava/lang/String;Ljava/lang/String;)Lsf5;

    move-result-object v1

    aput-object v1, v0, v4

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
