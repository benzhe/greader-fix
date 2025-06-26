.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxf5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    const-class v1, Lyg5;

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

    const-class v2, Lz96;

    .line 5
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lbf5;

    .line 7
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v5, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lzg5;

    .line 9
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v5, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    .line 11
    new-instance v2, Lwg5;

    invoke-direct {v2, p0}, Lwg5;-><init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V

    .line 12
    invoke-virtual {v1, v2}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 13
    invoke-virtual {v1}, Lsf5$b;->c()Lsf5$b;

    .line 14
    invoke-virtual {v1}, Lsf5$b;->b()Lsf5;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-cls"

    const-string v2, "17.3.0"

    .line 15
    invoke-static {v1, v2}, Ln56;->F(Ljava/lang/String;Ljava/lang/String;)Lsf5;

    move-result-object v1

    aput-object v1, v0, v4

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
