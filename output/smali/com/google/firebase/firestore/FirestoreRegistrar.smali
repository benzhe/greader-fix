.class public Lcom/google/firebase/firestore/FirestoreRegistrar;
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

.method public static synthetic lambda$getComponents$0(Ltf5;)Lbp5;
    .locals 8

    .line 1
    new-instance v0, Lbp5;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p0, v1}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lpe5;

    .line 3
    invoke-interface {p0, v2}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpe5;

    const-class v3, Lof5;

    .line 4
    invoke-interface {p0, v3}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lof5;

    new-instance v4, Lsv5;

    const-class v5, Lcb6;

    .line 5
    invoke-interface {p0, v5}, Ltf5;->b(Ljava/lang/Class;)Ls96;

    move-result-object v5

    const-class v6, Lby5;

    .line 6
    invoke-interface {p0, v6}, Ltf5;->b(Ljava/lang/Class;)Ls96;

    move-result-object v6

    const-class v7, Lve5;

    .line 7
    invoke-interface {p0, v7}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lve5;

    invoke-direct {v4, v5, v6, p0}, Lsv5;-><init>(Ls96;Ls96;Lve5;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lbp5;-><init>(Landroid/content/Context;Lpe5;Lof5;Ljw5;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

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
    const-class v1, Lbp5;

    .line 2
    invoke-static {v1}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v1

    const-class v2, Lpe5;

    .line 3
    new-instance v3, Lig5;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Landroid/content/Context;

    .line 5
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lby5;

    .line 7
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v5, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lcb6;

    .line 9
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v5, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lof5;

    .line 11
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v5, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 12
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lve5;

    .line 13
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v5, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 14
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v2, Lcp5;->a:Lcp5;

    .line 15
    invoke-virtual {v1, v2}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 16
    invoke-virtual {v1}, Lsf5$b;->b()Lsf5;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-fst"

    const-string v2, "22.0.1"

    .line 17
    invoke-static {v1, v2}, Ln56;->F(Ljava/lang/String;Ljava/lang/String;)Lsf5;

    move-result-object v1

    aput-object v1, v0, v4

    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
