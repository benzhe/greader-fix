.class public final Lms1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lns1;


# direct methods
.method public constructor <init>(Lns1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lms1;->b:Lns1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lms1;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lwk2;)Lms1;
    .locals 2

    .line 1
    iget-object v0, p0, Lms1;->a:Ljava/util/Map;

    iget-object p1, p1, Lwk2;->b:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lms1;->b:Lns1;

    .line 2
    iget-object v0, v0, Lns1;->b:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v1, Lps1;

    invoke-direct {v1, p0}, Lps1;-><init>(Lms1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
