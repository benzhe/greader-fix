.class public final Ln32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llz1<",
        "Lzl2;",
        "Lf12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmz1<",
            "Lzl2;",
            "Lf12;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lnq1;


# direct methods
.method public constructor <init>(Lnq1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln32;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Ln32;->b:Lnq1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lmz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lmz1<",
            "Lzl2;",
            "Lf12;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ln32;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmz1;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ln32;->b:Lnq1;

    invoke-virtual {v0, p1, p2}, Lnq1;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lzl2;

    move-result-object p2

    .line 4
    new-instance v0, Lmz1;

    new-instance v1, Lf12;

    invoke-direct {v1}, Lf12;-><init>()V

    invoke-direct {v0, p2, v1, p1}, Lmz1;-><init>(Ljava/lang/Object;Llb1;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Ln32;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
