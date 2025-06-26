.class public final synthetic Lwa6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lwa6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwa6;

    invoke-direct {v0}, Lwa6;-><init>()V

    sput-object v0, Lwa6;->a:Lwa6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltf5;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lxa6;

    const-class v1, Lza6;

    .line 2
    invoke-interface {p1, v1}, Ltf5;->d(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    .line 3
    sget-object v1, Lya6;->b:Lya6;

    if-nez v1, :cond_1

    .line 4
    const-class v2, Lya6;

    monitor-enter v2

    .line 5
    :try_start_0
    sget-object v1, Lya6;->b:Lya6;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lya6;

    invoke-direct {v1}, Lya6;-><init>()V

    sput-object v1, Lya6;->b:Lya6;

    .line 7
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-direct {v0, p1, v1}, Lxa6;-><init>(Ljava/util/Set;Lya6;)V

    return-object v0
.end method
