.class public final Lp84;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lp84;

.field public static volatile c:Lp84;

.field public static final d:Lp84;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo84;",
            "Lb94<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp84;

    const/4 v1, 0x1

    .line 1
    invoke-direct {v0, v1}, Lp84;-><init>(Z)V

    sput-object v0, Lp84;->d:Lp84;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp84;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lp84;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lp84;
    .locals 2

    sget-object v0, Lp84;->b:Lp84;

    if-nez v0, :cond_1

    const-class v1, Lp84;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lp84;->b:Lp84;

    if-nez v0, :cond_0

    sget-object v0, Lp84;->d:Lp84;

    sput-object v0, Lp84;->b:Lp84;

    .line 1
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
