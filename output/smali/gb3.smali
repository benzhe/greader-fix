.class public final Lgb3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgb3<",
        "TK;TV;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;",
            "Lmb3<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILhb3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lc50;->t4(I)I

    move-result p1

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 3
    iput-object p2, p0, Lgb3;->a:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a()Leb3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leb3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Leb3;

    iget-object v1, p0, Lgb3;->a:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leb3;-><init>(Ljava/util/Map;Lhb3;)V

    return-object v0
.end method
