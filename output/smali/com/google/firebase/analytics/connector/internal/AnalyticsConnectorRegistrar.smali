.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxf5;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final synthetic zza:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/RecentlyNonNull;
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

    const-class v1, Lbf5;

    .line 1
    invoke-static {v1}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v1

    const-class v2, Lpe5;

    .line 2
    new-instance v3, Lig5;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Landroid/content/Context;

    .line 4
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 5
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lno5;

    .line 6
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 7
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v2, Lef5;->a:Lwf5;

    .line 8
    invoke-virtual {v1, v2}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 9
    invoke-virtual {v1}, Lsf5$b;->c()Lsf5$b;

    .line 10
    invoke-virtual {v1}, Lsf5$b;->b()Lsf5;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-analytics"

    const-string v2, "18.0.1"

    .line 11
    invoke-static {v1, v2}, Ln56;->F(Ljava/lang/String;Ljava/lang/String;)Lsf5;

    move-result-object v1

    aput-object v1, v0, v4

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
