.class public final Li52;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lvi0;",
            ">;"
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
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Li52;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iput-object p1, p0, Li52;->b:Lnq1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lvi0;
    .locals 1

    .line 1
    iget-object v0, p0, Li52;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li52;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvi0;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
